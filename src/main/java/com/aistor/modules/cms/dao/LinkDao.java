/**
 * Copyright &copy; 2012-2013 <a href="https://github.com/Dopas/dopas">Dopas</a> All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package com.aistor.modules.cms.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.aistor.common.persistence.BaseDao;
import com.aistor.common.persistence.BaseDaoImpl;
import com.aistor.modules.cms.entity.Link;

/**
 * 链接DAO接口
 * @author Zaric
 * @version 2013-01-15
 */
public interface LinkDao extends LinkDaoCustom, CrudRepository<Link, Long> {

	@Modifying
	@Query("update Link set status=?2 where id = ?1")
	public int updateStatus(Long id, String status);
	
	public List<Link> findByIdIn(Long[] ids);
	
}

/**
 * DAO自定义接口
 * @author Zaric
 */
interface LinkDaoCustom extends BaseDao<Link> {

}

/**
 * DAO自定义接口实现
 * @author Zaric
 */
@Repository
class LinkDaoImpl extends BaseDaoImpl<Link> implements LinkDaoCustom {

}
