    show_message=function(){
        alert("Message :You are supposed to begin typing");
    }
    show_mouse=function(){
        alert("where is mouse going");
    }
    keyPress=function(){
        alert("You are supposed to begin typing");
    }


check_palindrome=function(){
    var user_input=(document.getElementById('user_input').value).toLowerCase();
    var length_of_string=user_input.length;
//    alert("length of input is= "+length_of_string);
    if (compare_characters(user_input[0],user_input[length_of_string-1])){
        alert("it might be a palindrome");
        var half=length_of_string/2;

            count=1;
            while(half<=1){
                result =compare_characters(user_input[count],user_input(length_of_string-1-count))
                if(!result){
                    document.getElementById("display").innerHTML="1 NOT A PALINDROME";
                    break;
                }
                half=half-1;
                count=count+1;
            }
            document.getElementById("display").innerHTML="2 IT IS A PALINDROME";                    
    }
    else {
    document.getElementById("display").innerHTML="NOT A PALINDROME";        
    }
}

compare_characters= function (first,second){
return (first==second);
}