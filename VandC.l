
%{
    int vow_count=0;
    int const_count =0;
    char vovel[]="";
%}
  
%%
[aeiouAEIOU] {vow_count++;strncat(vovel,&ch,1);}
[a-zA-Z] {const_count++;}
%%
int yywrap(){}
int main()
{
    printf("Enter the string of vowels and consonents:");
    yylex();
    printf("Number of vowels are:  %d\n", vow_count);
    printf("Number of consonants are:  %d\n", const_count);
    return 0;
} 