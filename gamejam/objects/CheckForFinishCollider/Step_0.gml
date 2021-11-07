if (instance_exists(oPlayer))
{
if (oPlayer.x > x) {
	room_goto(rStage2Limbo);
	
	audio_stop_sound(enter_limbo);

}
}