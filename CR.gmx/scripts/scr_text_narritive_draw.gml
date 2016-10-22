var Str = argument0;
var index = argument1; 

var xPos = argument2;
var yPos = argument3;







while ( index < string_length(Str) ) 
    {
    var isBig = true; 
    
    
    for ( var i = 0; i <= argument1 - 1; i++ )
        {
        if ( string_char_at(Str, index - i) == ' ')
            {
           
            Str = string_delete(Str, index - i, 1);
            Str = string_insert("#", Str, index - i);
            
            // Remember we did insert a #
            isBig = false;
            
            // Set the new end of line index
            index = index - i;
            break;
            }
        }
        
        // If this is a long word (i.e. we have to split it then do so)
        if ( isBig == true )
            {
            Str = string_insert("-#", Str, index);
            }

    index += argument1 - 1;
    }

    
    
    
var Stri = string_copy(Str, 1, StrShown);

if (string_char_at(Str, string_length(Stri) + 1) == ' ')
   {
   StrShown += 1;   
   }

draw_text(xPos, yPos, string(Stri) );
