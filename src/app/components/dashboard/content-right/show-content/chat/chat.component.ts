import {Component, OnInit} from '@angular/core';
import {ChatService} from '../../../../../services/chat/chat.service';

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
  messgae: any = '';
  messagesArr = [{
    content: 'Hi Marvie! Great to see you here again! Have a great day ahead :D'
  }, {
    content: 'Hi Marvie! Great to see you here again! Have a great day ahead :D'
  }, {
    content: 'Hi Marvie! Great to see you here again! Have a great day ahead :D'
  }, {
    content: 'Hi Marvie! Great to see you here again! Have a great day ahead :D'
  }, {
    content: 'Hi Marvie! Great to see you here again! Have a great day ahead :D'
  }, {
    content: 'Hi Marvie! Great to see you here again! Have a great day ahead :D'
  }];

  ngOnInit() {
    this.getHeighChat();
  }

  constructor(private _chatService: ChatService) {
    this._chatService.newUserJoined()
      .subscribe(data => {
        this.messageArray.push(data);
      });

    this._chatService.newMessageReceived()
      .subscribe(data => this.messageArray.push(data));
  }

  sendMessage() {
    this._chatService.sendMessage({user: this.user, room: this.room, message: this.messageText});
  }

  getHeighChat() {
    this.heightChat = $('#are-chat').height();
  }

  addMessage(value) {
    console.log(value.value);


    this.messagesArr.push({
      content: value.value
    });

    value.value = '';
    this.heightChat += 100;
    console.log(this.heightChat);
    $('#are-chat').animate({
        scrollTop: this.heightChat
      }, 400);
  }

}
