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
  private zones: any = '';
  private roles: any = '';
  private users: any = '';
  // Ytu
  private listYtu: any = '';
  private adUser: User = new User();

  constructor(private settingService: SettingService) {
  }

  ngOnInit() {
    this.getZones();
    this.getUsers();
    this.getYtu();
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
  getYtu() {
    this.settingService.getListYtu().subscribe(res => {
      this.listYtu = res.data;
      console.log(this.listYtu);
    }, err => {
      console.log(err);
    });
  }
}
