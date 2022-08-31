package com.mrwang.sharding.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mrwang.sharding.bean.Account;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface AccountMapper extends BaseMapper<Account> {

    @Select("select a.* from account a where a.user_id=#{userId} and exists(select 1 from user_info where id=a.user_id)")
    Account findByUserId(Integer userId);
}
