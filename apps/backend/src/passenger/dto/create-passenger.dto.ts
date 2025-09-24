import { IsString, IsEmail, IsOptional } from 'class-validator';

export class CreatePassengerDto {
  @IsString()
  name: string = '';

  @IsString()
  phone: string = '';

  @IsEmail()
  email: string = '';

  @IsString()
  disabilityType: string = '';

  @IsString()
  accessibilityNeeds: string = '';

  @IsString()
  password: string = '';
}
