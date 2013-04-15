/**
 * Copyright &copy; 2012-2013 <a href="https://github.com/Dopas/dopas">Dopas</a> All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package com.aistor.modules.cms.service;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aistor.common.persistence.Page;
import com.aistor.common.service.BaseService;
import com.aistor.modules.cms.dao.GuestbookDao;
import com.aistor.modules.cms.entity.Guestbook;

/**
 * 留言Service
 * @author Zaric
 * @version 2013-01-15
 */
@Service
@Transactional(readOnly = true)
public class GuestbookService extends BaseService {

	@SuppressWarnings("unused")
	private static Logger logger = LoggerFactory.getLogger(GuestbookService.class);
	
	@Autowired
	private GuestbookDao guestbookDao;
	
	public Guestbook get(Long id) {
		return guestbookDao.findOne(id);
	}
	
	public Page<Guestbook> find(Page<Guestbook> page, Guestbook guestbook) {
		DetachedCriteria dc = guestbookDao.createDetachedCriteria();
		if (StringUtils.isNotEmpty(guestbook.getType())){
			dc.add(Restrictions.eq("type", guestbook.getType()));
		}
		if (StringUtils.isNotEmpty(guestbook.getContent())){
			dc.add(Restrictions.like("content", "%"+guestbook.getContent()+"%"));
		}
		dc.add(Restrictions.eq("status", guestbook.getStatus()));
		dc.addOrder(Order.desc("id"));
		return guestbookDao.find(page, dc);
	}
	
	@Transactional(readOnly = false)
	public void save(Guestbook guestbook) {
		guestbookDao.save(guestbook);
	}
	
	@Transactional(readOnly = false)
	public void delete(Long id, Boolean isRe) {
		guestbookDao.updateStatus(id, isRe!=null&&isRe?Guestbook.STATUS_AUDIT:Guestbook.STATUS_DELETE);
	}
	
}
