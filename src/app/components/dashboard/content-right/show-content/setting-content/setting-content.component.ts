import {Component, OnInit} from '@angular/core';
import {SettingService} from '../../../../../services/setting/setting.service';
import {User} from '../../../../../models/setting/user';
import swal from 'sweetalert';

declare var $: any;


@Component({
  selector: 'app-setting-content',
  templateUrl: './setting-content.component.html',
  styleUrls: ['./setting-content.component.css']
})
export class SettingContentComponent implements OnInit {
  public zones: any = '';
  public roles: any = '';
  public users: any = '';
  // Ytu
  public listYitu: any = '';
  public adUser: User = new User();

  constructor(public settingService: SettingService) {
  }

  ngOnInit() {
    this.getZones();
    this.getUsers();
    this.getYitu();
  }

  getZones() {
    this.settingService.getZonesSetting().subscribe(res => {
      this.zones = res.data;
    }, err => {
      console.log(err);
    });
  }

  getUsers() {
    this.settingService.getUsersSetting().subscribe(res => {
      this.users = res.data;
      this.getUsers();
    }, err => {
      console.log(err);
    });
  }

  getRole() {
    this.settingService.getAllRoles().subscribe(res => {
      this.roles = res.data;
    }, error => {
      console.log(error);
    });
  }

  addUser() {
    const array = [];
    $('#list-permission input:checkbox:checked').map(function () {
      array.push($(this).val());
    }).get();
    this.adUser.permission = array;
    console.log(this.adUser);
    this.settingService.addUserSetting(this.adUser).subscribe(res => {
      swal('Add User Success!', '', 'success');
    }, err => {
      swal('Add User not Working!', '', 'error');
    });
  }

  deleteUser(id) {
    this.settingService.deleteUserSetting(id).subscribe(res => {
      this.getUsers();
      swal('Delete Success!', '', 'success');
    }, err => {
      swal('Not Delete!', '', 'error');
    });
  }

  // ytu
  getYitu() {
    this.settingService.getListYitu().subscribe(res => {
      this.listYitu = res.data;
      console.log(this.listYitu);
    }, err => {
      console.log(err);
    });
  }
}
