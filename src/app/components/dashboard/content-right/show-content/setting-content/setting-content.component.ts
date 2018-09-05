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

  updateUser(id) {
    console.log(id);
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
      console.log(this.listYitu)
    }, err => {
      console.log(err);
    });
  }
}
