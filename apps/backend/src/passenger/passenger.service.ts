import { Injectable } from '@nestjs/common';
import { CreatePassengerDto } from './dto/create-passenger.dto';
// import { UpdatePassengerDto } from './dto/update-passenger.dto';
import { PrismaService } from '../prisma/prisma.service';



@Injectable()
export class PassengerService {

  constructor(private prisma: PrismaService) {}

  // const {  name, phone, email, disabilityType, accessibilityNeeds, password} = data

  create(createPassengerDto: CreatePassengerDto) {
    return this.prisma.passenger.create({
      createPassengerDto
    })
  }

  findAll() {
    return `This action returns all passenger`;
  }

  findOne(id: number) {
    return `This action returns a #${id} passenger`;
  }

  // update(id: number, updatePassengerDto: UpdatePassengerDto) {
  //   return `This action updates a #${id} passenger`;
  // }

  remove(id: number) {
    return `This action removes a #${id} passenger`;
  }
}
