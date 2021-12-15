#include "main.h"

uint32_t cpt;

void secret_led_blinking(void)
{
	cpt++;
	HAL_GPIO_TogglePin(LD2_GPIO_Port, LD2_Pin);
}
