var socket = io();
socket.on('add', function(call){
  if (call) {
    document.getElementById('testing').innerHTML = call;
  }
});

socket.on('assess', function(call){
  if (call) {
    document.getElementById('assess').innerHTML = call;
  }
});
