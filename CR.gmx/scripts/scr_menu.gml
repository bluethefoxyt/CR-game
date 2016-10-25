switch(mpos)
{

case 0: {
file_create("Save.dat");
room_goto(room1);
}

case 1:{



}
case 2:{
//Delete save.
if file_exists("Save.dat")
   {
   file_delete("Save.dat");
   }

}
}
audio_play_sound(sound2, 10, false);
