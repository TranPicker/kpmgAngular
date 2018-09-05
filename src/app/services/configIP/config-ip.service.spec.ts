import { TestBed, inject } from '@angular/core/testing';

import { ConfigIpService } from './config-ip.service';

describe('ConfigIpService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [ConfigIpService]
    });
  });

  it('should be created', inject([ConfigIpService], (service: ConfigIpService) => {
    expect(service).toBeTruthy();
  }));
});
