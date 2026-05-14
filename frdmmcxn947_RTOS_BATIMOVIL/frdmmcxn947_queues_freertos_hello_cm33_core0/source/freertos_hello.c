/*
 * Ejemplo de uso de queues en FreeRTOS para MCXN947
 * Comunicación entre dos tareas usando colas
 */

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"

/* NXP SDK includes */
#include "fsl_device_registers.h"
#include "fsl_debug_console.h"
#include "board.h"
#include "app.h"

QueueHandle_t xQuewe;

void SenderTask(void *pvParameters) {
    int pato = 0;
    while (1) {
        pato++;
        if (xQueueSend(xQuewe, &pato, pdMS_TO_TICKS(10)) == pdPASS) {
            PRINTF("Enviado: %d | Ocupados en cola: %d\r\n",pato, uxQueueMessagesWaiting(xQuewe));
        } else {
            PRINTF("Cola llena, no se pudo enviar %d\r\n", pato);
        }
        vTaskDelay(pdMS_TO_TICKS(1500));
    }
}

void ReceiverTask(void *pvParameters) {
    int patorecibido;
    while (1) {
        if (xQueueReceive(xQuewe, &patorecibido, pdMS_TO_TICKS(1000)) == pdTRUE) {
            PRINTF("Recibido: %d | Ocupados en cola: %d\r\n",patorecibido, uxQueueMessagesWaiting(xQuewe));
        } else {
            PRINTF("Cola vacía, esperando...\r\n");
        }
        vTaskDelay(pdMS_TO_TICKS(1500));
    }
}

int main(void)
{
    BOARD_InitHardware();
    xQuewe = xQueueCreate(5, sizeof(int));

    if (xQuewe != NULL) {
        xTaskCreate(SenderTask, "Sender", 256, NULL, 1, NULL);
        xTaskCreate(ReceiverTask, "Receiver", 256, NULL, 1, NULL);
        vTaskStartScheduler();
    }
    for (;;);
}
