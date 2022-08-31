package com.mrwang.sharding.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mrwang.sharding.bean.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface UserMapper extends BaseMapper<User> {
}
