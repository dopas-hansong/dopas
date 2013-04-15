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
import com.aistor.modules.cms.entity.Article;

/**
 * 文章DAO接口
 * @author Zaric
 * @version 2013-01-15
 */
public interface ArticleDao extends ArticleDaoCustom, CrudRepository<Article, Long> {

	@Modifying
	@Query("update Article set status=?2 where id = ?1")
	public int updateStatus(Long id, String status);
	
	public List<Article> findByIdIn(Long[] ids);
	
	@Modifying
	@Query("update Article set hits=hits+1 where id = ?1")
	public int updateHitsAddOne(Long id);
}

/**
 * DAO自定义接口
 * @author Zaric
 */
interface ArticleDaoCustom extends BaseDao<Article> {

}

/**
 * DAO自定义接口实现
 * @author Zaric
 */
@Repository
class ArticleDaoImpl extends BaseDaoImpl<Article> implements ArticleDaoCustom {

}
