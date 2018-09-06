import {Component, OnInit} from '@angular/core';
import {SettingService} from '../../../../../services/setting/setting.service';
import {Subject} from 'rxjs';
import {User} from '../../../../../models/setting/user';
import swal from 'sweetalert';
import 'datatables.net';

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
  // zone
  public tags: any = '';
  // Ytu
  public listYitu: any = '';
  public adUser: User = new User();
  public upUser: User = new User();

  constructor(public settingService: SettingService) {
  }

  ngOnInit() {
    this.getZones();
    this.getUsers();
    this.getYitu();
    $('#multi-select-tag').dropdown();

  }

  getUsers() {
    this.settingService.getUsersSetting().subscribe(res => {
      this.users = res.data;
      console.log(this.users);
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
    this.settingService.addUserSetting(this.adUser).subscribe(res => {
      swal('Add User Success!', '', 'success');
      this.getUsers();
      this.resetUserVaribleAdd();
    }, err => {
      swal('Email is Exist!', '', 'error');
    });
  }


  updateUser(id) {
    const array = [];
    $('#list-permission-update input:checkbox:checked').map(function () {
      array.push($(this).val());
    }).get();
    this.upUser.permission = array;
    this.settingService.updateUserSetting(this.upUser).subscribe(res => {
      swal('Update Success!', '', 'success');
      this.getUsers();
      this.resetPassword();
    }, err => {
      swal('Update Failure!', '', 'error');
    });
  }
  resetPassword() {
    this.upUser.password = '';
  }
  resetUserVaribleAdd() {
    this.adUser.full_name = '';
    this.adUser.password = '';
    this.adUser.email = '';
    this.adUser.phone = '';
  }

  deleteUser(id) {
    this.settingService.deleteUserSetting(id).subscribe(res => {
      this.getUsers();
      swal('Delete Success!', '', 'success');
    }, err => {
      swal('Not Delete!', '', 'error');
    });
  }

  getUserById(id) {
    this.getRole();
    this.settingService.getUSerSettingById(id).subscribe(res => {
      this.assignUpDateUserVarible(res.data);
    }, err => {
      console.log(err);
    });
  }

  assignUpDateUserVarible(data) {
    this.upUser.id = data.Employment.id;
    this.upUser.full_name = data.Employment.full_name;
    this.upUser.phone = data.Employment.phone;
    this.upUser.email = data.Employment.email;
    $('#list-permission-update input:checkbox').map(function () {
      const that = $(this);
      for (let i = 0; i < data.role.length; i++) {
        const valueOfRole = '' + data.role[i];
        if (that.val() === valueOfRole) {
          that.attr('checked', true);
          break;
        }
      }
    });
  }
  // Zones
  getTagAll() {
    this.settingService.getAllTag().subscribe(res => {
      this.tags = res.data;
    }, err => {
      console.log(err);
    });
  }

  getZones() {
    this.settingService.getZonesSetting().subscribe(res => {
      this.zones = res.data;
    }, err => {
      console.log(err);
    });
  }

  addZone(tag) {
    console.log(tag.value);
  }

  deleteZone(id) {
    this.settingService.deleteZone(id).subscribe(res => {
      this.getZones();
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
