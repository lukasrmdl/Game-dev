// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function array_value_exists( array, value )
{
    var length, count
    length = array_length(array)
    count = 0
    for (var i = 0; i < length; i++)
    {
        if typeof(array[i]) == typeof(value) && array[i] == value 
                count += 1
    }
    return count
}