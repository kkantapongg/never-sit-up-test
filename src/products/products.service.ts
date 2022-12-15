import { Injectable } from '@nestjs/common';
import { CreateProductDto } from './dto/create-product.dto';
import { UpdateProductDto } from './dto/update-product.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Product } from './entities/product.entity';

@Injectable()
export class ProductsService {
  constructor(
    @InjectRepository(Product)
    private productsRepository: Repository<Product>,
  ) {}

  create(createProductDto: CreateProductDto) {
    return this.productsRepository.save(createProductDto);
  }

  findAll() {
    return this.productsRepository.find();
  }

  findOne(id: number) {
    return this.productsRepository.findOneBy({ id: id });
  }

  update(id: number, updateProductDto: UpdateProductDto) {
    return this.productsRepository.update({ id: id }, updateProductDto);
  }

  remove(id: number) {
    return this.productsRepository.delete({ id: id });
  }

  findBy(data: any) {
    return this.productsRepository.findBy(data);
  }
}
