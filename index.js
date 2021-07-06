const express = require('express')
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.json());

function func() {

  let data = [];
  const days = [
    'Domingo',
    'Segunda-feira',
    'Terça-feira',
    'Quarta-feira',
    'Quinta-feira',
    'Sexta-feira',
    'Sábado'
  ];
  let min = Math.ceil(0);
  let max = Math.floor(7);

  data.push(days[Math.floor(Math.random() * (max - min)) + min]);

  let minHour = Math.ceil(0);
  let maxHour = Math.floor(24);
  let minMinute = Math.ceil(0);
  let maxMinute = Math.floor(60);

  let hour = Math.floor(Math.random() * (maxHour - minHour)) + minHour;
  let minutes = Math.floor(Math.random() * (maxMinute - minMinute)) + minMinute;

  hour = hour < 10 ? '0' + hour : hour;
  minutes = minutes < 10 ? '0' + minutes : minutes;

  seconds = Math.floor(Math.random() * (maxMinute - minMinute)) + minMinute;
  seconds = seconds < 10 ? '0' + seconds : seconds;
  hourMinutes = hour + ":" + minutes + ":" + seconds;

  data.push(hourMinutes);

  min = Math.ceil(1);
  max = Math.floor(4);

  data.push(Math.floor(Math.random() * (max - min)) + min);

  return data;
}

app.get('/', function (req, res) {
  data = func().join(';')
  res.send(data);
})

app.listen(3333, () => {
  console.info(`Ta rodando o bicho na 3333`);
});