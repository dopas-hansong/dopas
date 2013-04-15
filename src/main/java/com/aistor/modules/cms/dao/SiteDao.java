/**
 * Copyright &copy; 2012-2013 <a href="https://github.com/Dopas/dopas">Dopas</a> All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package com.aistor.modules.cms.dao;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.aistor.common.persistence.BaseDao;
import com.aistor.common.persistence.BaseDaoImpl;
import com.aistor.modules.cms.entity.Site;

/**
 * 站点DAO接口
 * @author Zaric
 * @version 2013-01-15
 */
public interface SiteDao extends SiteDaoCustom, CrudRepository<Site, Long> {
	
	@Modifying
	@Query("update Site set delFlag=?2 where id = ?1")
	public int updateDelFlag(Long id, String delFlag);
}

/**
 * DAO自定义接口
 * @author Zaric
 */
interface SiteDaoCustom extends BaseDao<Site> {

}

/**
 * DAO自定义接口实现
 * @author Zaric
 */
@Repository
class SiteDaoImpl extends BaseDaoImpl<Site> implements SiteDaoCustom {

}
