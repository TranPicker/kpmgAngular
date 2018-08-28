import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FeedsContentComponent } from './feeds-content.component';

describe('FeedsContentComponent', () => {
  let component: FeedsContentComponent;
  let fixture: ComponentFixture<FeedsContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FeedsContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FeedsContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
