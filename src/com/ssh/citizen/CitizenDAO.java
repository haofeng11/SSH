package com.ssh.citizen;

import java.util.List;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Citizen entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see com.ssh.citizen.Citizen
 * @author MyEclipse Persistence Tools
 */
public class CitizenDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(CitizenDAO.class);
	public static final String TAG = "CitizenDAO";
	// property constants
	public static final String DANYUAN_NUM = "danyuanNum";
	public static final String LOCATION = "location";
	public static final String NAME = "name";
	public static final String PHOTO_URL = "photoUrl";

	protected void initDao() {
		// do nothing
	}

	public void save(Citizen transientInstance) {
		log.debug("saving Citizen instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Citizen persistentInstance) {
		log.debug("deleting Citizen instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public Citizen findById(java.lang.Long id) {
		log.debug("getting Citizen instance with id: " + id);
		try {
			Citizen instance = (Citizen) getHibernateTemplate().get(
					"com.ssh.citizen.Citizen", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(Citizen instance) {
		log.debug("finding Citizen instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding Citizen instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from Citizen as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByDanyuanNum(Object danyuanNum) {
		return findByProperty(DANYUAN_NUM, danyuanNum);
	}

	public List findByLocation(Object location) {
		return findByProperty(LOCATION, location);
	}

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List findByPhotoUrl(Object photoUrl) {
		return findByProperty(PHOTO_URL, photoUrl);
	}

	public List findAll() {
		log.debug("finding all Citizen instances");
		try {
			String queryString = "from Citizen";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public Citizen merge(Citizen detachedInstance) {
		log.debug("merging Citizen instance");
		try {
			Citizen result = (Citizen) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(Citizen instance) {
		log.debug("attaching dirty Citizen instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(Citizen instance) {
		log.debug("attaching clean Citizen instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static CitizenDAO getFromApplicationContext(ApplicationContext ctx) {
		return (CitizenDAO) ctx.getBean("CitizenDAO");
	}
}