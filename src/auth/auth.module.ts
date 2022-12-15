import { Module } from '@nestjs/common';
import { AuthService } from './auth.service';
import { LocalStrategy } from './local.strategy';
import { UsersModule } from '../users/users.module';
import { PassportModule } from '@nestjs/passport';
import { JwtModule } from '@nestjs/jwt';
import { jwtConstants } from './constants';
import { JwtService } from '@nestjs/jwt';
import { UsersService } from '../users/users.service';
import { JwtStrategy } from './jwt.strategy';

@Module({
  imports: [
    UsersModule,
    PassportModule,
    JwtModule.register({
      secret: jwtConstants.secret,
      signOptions: { expiresIn: "1800s" },
    }),
  ],
  providers: [AuthService, LocalStrategy, JwtService, UsersService, JwtStrategy],
  exports: [AuthService],
})
export class AuthModule {}