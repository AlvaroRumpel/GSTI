
<h1 align="center">
  <img alt="Logo do repositório incluindo o nome da disciplina, logo da AMF e o semestre 2021/1" src="capaGit.png" width="600px">
</h1>

<h1 align="center">GSTI</h1>

<h1 align="center">Sensor de Enchentes</h1>
<h2>Descrição do projeto</h2>
Uma aplicação IoT com diversos sensores para coleta de dados foi implementada em um rio, onde é coletado o nível da água.

<h2>Como funciona</h2>
Os dados da aplicação são enviados através de uma API e estão organizados da seguinte forma:

  - diaSemana;
  - horario;
  - nivelRio;

A aplicação irá executar um script toda vez que a boia emitir o sinal de que o nível da água subiu.
Com esses dados, gerar um arquivo (txt/CSV) com as informações coletadas.
Estrutura do arquivo:

| diaSemana | horario | nivelRio | alertaEnviado |
|:---------:|:-------:|:--------:|:-------------:|
|           |         |          |               |
  
Se a boia emitir sinais 3x no dia, a mesma envia um alerta de segurança 

<h1 align="center">Autores</h1>

  - Álvaro C. Rumpel
  - Lucas de Oliveira Rodrigues
  - Luan V. da Costa
