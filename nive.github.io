<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Joyce - Feliz Aniversário, Arthur!</title>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/paper.js/0.12.15/paper-full.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/confetti-js"></script>
  <style>
    body {
      background-color: #444444;
      margin: 0;
      overflow: hidden;
    }
    #canvas {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
    }
    #message {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      color: white;
      font-family: Arial;
      font-weight: bold;
      font-size: 24px;
    }
  </style>
</head>
<body>
  <div id="message"></div>
  <canvas id="canvas"></canvas>
  
  <audio src="C:\Users\greice\Documents\estudo javascript\js\index.html\De Hofnar - Zonnestraal.mp3" autoplay controls></audio>
  <script>
    // Configurações
    paper.install(window);
    paper.setup("canvas");

    // Carregar a imagem do urso
    var bearImg = new Raster("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT0GOmFPDHzQK10X6WHlm22z3wuaV1RUCchw&usqp=CAU"); // Insira a URL da imagem do urso do Vasco

    bearImg.onLoad = function() {
      bearImg.position = view.center;
      bearImg.scale(3); // Ajuste o tamanho do urso
      bearImg.sendToBack();
      view.update();
    };

    var message = document.getElementById("message");

    // Animação
    function onMouseDown(event) {
      bearImg.scale(0.4); // Aumenta o tamanho do urso
      message.textContent = "Feliz aniversário, meu querido amigo e amado Arthur, o idiota mais inteligente que eu já tive o prazer de conhecer! Que neste novo capítulo da sua vida, você continue espalhando sua inteligência brilhante e seu jeito atrapalhado, porém cativante. Que as gargalhadas nunca cessem e que as conquistas sejam tão grandiosas quanto a sua genialidade. Parabéns, meu amigo idiota-genial! Desejo a você muitas felicidades neste dia especial.";
      message.style.top = event.point.y + "px";
      message.style.left = event.point.x + "px";
      view.update();

      // Efeito de confete
      var confettiSettings = { target: 'canvas', size: 1, max: 150 };
      var confetti = new ConfettiGenerator(confettiSettings);
      confetti.render();
    }

    view.onMouseDown = onMouseDown;

    view.draw();
  </script>
</body>
</html>
