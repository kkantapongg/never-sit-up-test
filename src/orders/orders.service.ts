import { Injectable } from '@nestjs/common';
import { CreateOrderDto } from './dto/create-order.dto';
import { UpdateOrderDto } from './dto/update-order.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Orders } from './entities/orders.entity';

@Injectable()
export class OrdersService {
  constructor(
    @InjectRepository(Orders)
    private ordersRepository: Repository<Orders>,
  ) {}

  async create(data: any) {
    return await this.ordersRepository.save(data);
  }

  findAll() {
    return this.ordersRepository.find();
  }

  findOne(id: number) {
    return this.ordersRepository.findOneBy({ id: id });
  }

  update(id: number, updateOrderDto: UpdateOrderDto) {
    return this.ordersRepository.update({ id: id }, updateOrderDto);
  }

  remove(id: number) {
    return this.ordersRepository.delete({ id: id });
  }

  find(data: any) {
    return this.ordersRepository.findBy(data);
  }

  async cancel(id: number) {
    return await this.ordersRepository.update({ id: id }, { status: 'cancel' });
  }
}
