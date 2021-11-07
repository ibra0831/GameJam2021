if (room == rStage2Hell) room_goto(rStage2Limbo);
if (room == rStage2Limbo) room_restart();

if (room == rTutorialLimbo) room_restart();
if (room == rTutorialHell) room_goto(rTutorialLimbo);