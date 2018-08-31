import { TestBed, inject } from '@angular/core/testing';

import { DetailPersonService } from './detail-person.service';

describe('DetailPersonService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [DetailPersonService]
    });
  });

  it('should be created', inject([DetailPersonService], (service: DetailPersonService) => {
    expect(service).toBeTruthy();
  }));
});
