import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Orders {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  orderNo: string;

  @Column()
  userId: number;

  @Column()
  productId: number;

  @Column()
  quantity: number;

  @Column()
  createdAt: Date;

  @Column({
    type: "enum",
    enum: ['waiting', 'paid', 'cancel'],
    default: 'waiting'
  })
  status: string
}
