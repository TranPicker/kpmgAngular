import {Component, OnInit} from '@angular/core';
import {ChatService} from '../../../../../services/chat/chat.service';
import * as io from 'socket.io-client';

declare var $: any;

@Component({
  selector: 'app-chat',
  templateUrl: './chat.component.html',
  styleUrls: ['./chat.component.css']
})
export class ChatComponent implements OnInit {
  heightChat: number;
  user: String;
  room: String;
  messageText: String;
  messageArray: Array<{ user: String, message: String }> = [];

  ngOnInit() {
    this.getHeighChat();
    this.getMessage();
  }

  constructor(private chatService: ChatService) {
  }

  getHeighChat() {
    this.heightChat = $('#are-chat').height();
  }

  addMessage(message) {
    this.chatService.sendMessage(message.value).subscribe(res => {
      console.log('Send Success!');
    }, error => {
      console.log('Send Error');
    });
    message.value = '';
  }

  getMessage() {
    const output = $('#are-chat');
    const socket = io.connect('http://192.168.11.240:6009');

    function addMessage(data) {
      switch (data.type) {
        case 1:
          output.append(`
                    <div class="example-chat d-flex align-items-center">
                    <img src="assets/images/KPMG.png" class="float-left  mr-3 ml-2" alt="">
                    <div class="text">
                        <span class="d-block text-muted">3:28 PM</span>
                        <p class="hello">  ${data.message.description}</p>
                     </div>
                 </div>
                    `);
          break;
        case 2:
          output.append(`
                   <div class="example-chat d-flex align-items-center">
                    <img src="${data.message.file}" class="float-left  mr-3 ml-2" alt="">
                    <div class="text">
                        <span class="d-block text-muted">${data.message.title}</span>
                        <p class="hello"> ${data.message.description}</p>
                     </div>
                  </div>
                    `);
          break;
        case 3:
          output.append(`
                  <div class="example-chat d-flex align-items-center">
                    <img src="assets/images/KPMG.png" class="float-left  mr-3 ml-2" alt="">
                    <div class="text">
                        <span class="d-block text-muted">3:28 PM</span>
                        <p class="hello">${data.message.description}</p>
                     </div>
                   </div>
                    `);
      }

      output.animate({scrollTop: output.prop('scrollHeight')}, 500);
    }

    socket.on('load old msg', function (data) {
      data.forEach((item, key) => {
        setTimeout(function () {
          addMessage(item);
        }, key * 1000);
      });
    });

    socket.on('message', function (data) {
      console.log(data);
      addMessage(data);
    });
  }

}
