%{
#include <stdio.h>
int comment_flag = 0;
%}

%option noyywrap

%%

#(.)* {  }

'''.*''' {  }


. { if(comment_flag == 0) putchar(yytext[0]);  }

%%

int main() {
    yyin = fopen("exprreg.py", "r");
    yylex(); // Inicia el análisis léxico
    fclose(yyin);
    return 0;
}
