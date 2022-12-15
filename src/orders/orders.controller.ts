import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  Request,
  UseGuards
} from '@nestjs/common';
import { OrdersService } from './orders.service';
import { CreateOrderDto } from './dto/create-order.dto';
import { UpdateOrderDto } from './dto/update-order.dto';
import { ProductsService } from '../products/products.service';
import * as moment from 'moment';
import { randomUUID } from 'crypto';
import { v4 as uuidv4 } from 'uuid';
import { JwtAuthGuard } from '../auth/jwt-auth.guard';

@Controller('orders')
export class OrdersController {
  constructor(
    private readonly ordersService: OrdersService,
    private productsService: ProductsService,
  ) {}

  @UseGuards(JwtAuthGuard)
  @Post()
  create(@Body() createOrderDto: CreateOrderDto) {
    const products = createOrderDto.products;
    const createdAt = moment(Date()).format('Y-M-D').toString();
    const orderNo = uuidv4();
    let result = [];

    products.forEach((product) => {
      const data = {
        orderNo: orderNo,
        userId: createOrderDto.userId,
        productId: product.id,
        quantity: product.quantity,
        createdAt: createdAt,
      };
      this.ordersService.create(data);
    });

    return 'records are saved';
  }

  @UseGuards(JwtAuthGuard)
  @Get()
  findAll() {
    return this.ordersService.findAll();
  }

  @UseGuards(JwtAuthGuard)
  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.ordersService.findOne(+id);
  }

  @UseGuards(JwtAuthGuard)
  @Patch(':id')
  update(@Param('id') id: string, @Body() updateOrderDto: UpdateOrderDto) {
    return this.ordersService.update(+id, updateOrderDto);
  }

  @UseGuards(JwtAuthGuard)
  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.ordersService.remove(+id);
  }

  @UseGuards(JwtAuthGuard)
  @Get('history/:id')
  async orderHistory(@Param('id') userId: string) {
    let order = await this.ordersService.find({ userId: userId });
    return order;
  }

  @UseGuards(JwtAuthGuard)
  @Post('cancel/:orderNo')
  async cancelOrder(@Param('orderNo') orderNo: string) {
    let orders = await this.ordersService.find({ orderNo: orderNo });
    
    orders.forEach((order) => {
      console.log(order.id)
      this.ordersService.cancel(order.id);
    });

    return `Order No. ${orderNo} is canceled`;
  }
}
