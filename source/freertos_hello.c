#include <stdio.h>
#include "board.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "fsl_debug_console.h"
#include "FreeRTOS.h"
#include "task.h"
#include "fsl_gpio.h"

int main(void) {
    BOARD_InitBootPins();
    BOARD_InitBootClocks();
    BOARD_InitDebugConsole();

    gpio_pin_config_t tx_config = {kGPIO_DigitalOutput, 1};
    GPIO_PinInit(GPIO1, TX_PIN, &tx_config);

    xTaskCreate(vUARTTxTask, "UARTTx", configMINIMAL_STACK_SIZE + 100,
                NULL, tskIDLE_PRIORITY + 1, NULL);

    vTaskStartScheduler();

    while(1);
    return 0;
}

void vUARTTxTask(void *pvParameters) {
    uint8_t data = 0xAA; //0101 0101
    const TickType_t bitDelay = pdMS_TO_TICKS(1);

    for (;;) {
        // Start
        GPIO_PinWrite(GPIO1, TX_PIN, 0);
        vTaskDelay(bitDelay);

        // 8
        for (int i = 0; i < 8; i++) {
            GPIO_PinWrite(GPIO1, TX_PIN, (data >> i) & 0x01);
            vTaskDelay(bitDelay);
        }

        // Stop
        GPIO_PinWrite(GPIO1, TX_PIN, 1);
        vTaskDelay(bitDelay);
        vTaskDelay(pdMS_TO_TICKS(10));
    }
}
