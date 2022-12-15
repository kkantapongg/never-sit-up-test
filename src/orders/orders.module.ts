import { Module } from '@nestjs/common';
import { OrdersService } from './orders.service';
import { OrdersController } from './orders.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Orders } from './entities/orders.entity';
import { ProductsService } from 'src/products/products.service';
import { Product } from 'src/products/entities/product.entity';

@Module({
  controllers: [OrdersController],
  providers: [OrdersService, ProductsService],
  imports: [TypeOrmModule.forFeature([Orders, Product])],
  exports: [TypeOrmModule],
})
export class OrdersModule {}
