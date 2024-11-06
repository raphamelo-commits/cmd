@echo off
REM 1. Verifique o volume da unidade
echo Verificando o volume da unidade C:
vol C:
pause >nul

REM 2. Verifique a versão do sistema
echo Verificando a versão do sistema:
ver
pause >nul

REM 3. Limpe a tela
echo Pressione qualquer tecla para limpar a tela...
pause >nul
cls

REM 4. Liste todos os arquivos e pastas da unidade C:
echo Listando todos os arquivos e pastas da unidade C:
dir C:\
pause >nul

REM 5. Crie 3 pastas na unidade C: com os nomes Huginho, Zezinho e Luizinho
echo Criando pastas Huginho, Zezinho e Luizinho em C:
mkdir C:\Huginho
mkdir C:\Zezinho
mkdir C:\Luizinho
pause >nul

REM 6. Verificar se as pastas foram criadas
echo Verificando se as pastas foram criadas:
if exist C:\Huginho (
    echo Pasta Huginho criada com sucesso.
) else (
    echo Erro ao criar a pasta Huginho.
)

if exist C:\Zezinho (
    echo Pasta Zezinho criada com sucesso.
) else (
    echo Erro ao criar a pasta Zezinho.
)

if exist C:\Luizinho (
    echo Pasta Luizinho criada com sucesso.
) else (
    echo Erro ao criar a pasta Luizinho.
)
pause >nul

REM 7. Acesse cada uma dessas pastas e crie outras Argentina, Brasil e Uruguai, e verifique se as pastas foram criadas
for %%p in (Huginho Zezinho Luizinho) do (
    echo Criando pastas Argentina, Brasil e Uruguai em C:\%%p:
    mkdir C:\%%p\Argentina
    mkdir C:\%%p\Brasil
    mkdir C:\%%p\Uruguai
    
    echo Verificando se as pastas foram criadas em C:\%%p:
    if exist C:\%%p\Argentina (
        echo Pasta Argentina criada com sucesso em C:\%%p.
    ) else (
        echo Erro ao criar a pasta Argentina em C:\%%p.
    )

    if exist C:\%%p\Brasil (
        echo Pasta Brasil criada com sucesso em C:\%%p.
    ) else (
        echo Erro ao criar a pasta Brasil em C:\%%p.
    )

    if exist C:\%%p\Uruguai (
        echo Pasta Uruguai criada com sucesso em C:\%%p.
    ) else (
        echo Erro ao criar a pasta Uruguai em C:\%%p.
    )
)
pause >nul


REM 8. Remover todas as pastas com o nome Argentina
echo Removendo todas as pastas com o nome Argentina:
rmdir /S /Q C:\Huginho\Argentina
rmdir /S /Q C:\Zezinho\Argentina
rmdir /S /Q C:\Luizinho\Argentina
pause >nul

REM 9. Criar um arquivo log.txt na unidade C:
echo Criando o arquivo log.txt em C:
echo Log de execução do script > C:\log.txt
pause >nul

REM 10. Fazer uma cópia para cada uma das pastas Huginho, Zezinho e Luizinho
echo Copiando log.txt para cada uma das pastas Huginho, Zezinho e Luizinho:
copy C:\log.txt C:\Huginho\
copy C:\log.txt C:\Zezinho\
copy C:\log.txt C:\Luizinho\

echo Script concluído.
pause