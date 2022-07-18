*** Settings ****

Documentation        Esse teste preenche um formulário
Resource             treinamento_resource.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador


*** Test Cases ***

Caso de teste 01- Verifica o preenchimento do campo nome
 #[Documentation]    Esse teste verifica o preenchimento do campo nome
 #[Tags]             nome_categoria
   Acessar a home page do site wcaquino
   Verificar se aparece a frase "Campo de treinamento"
   Preencher nome com Maria
   Preencher sobrenome com Silva
   Preencher sexo com F
   Selecionar checkbox pizza
   Selecionar escolaridade superior 
   Selecionar esporte Corrida
   Preencher sugestoes Às vezes ouço passar o vento; e só de ouvir o vento passar, vale a pena ter nascido.

   Clicar em confirmar
   
   Verificar texto Nome: Maria
   Verificar texto Sobrenome: Silva
   Verificar texto Sexo: Feminino
   Verificar texto Comida: Pizza
   Verificar texto Escolaridade: superior
   Verificar texto Esportes: Corrida
   Verificar texto Sugestoes: Às vezes ouço passar o vento; e só de ouvir o vento passar, vale a pena ter nascido.