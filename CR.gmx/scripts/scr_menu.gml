switch(mpos)
{

case 0: {

room_goto(room1);
}

case 1:{



}
case 2:{

if file_exists("Save.dat")
   {
   file_delete("Save.dat");
   }

}
}
audio_play_sound(sound2, 10, false);
