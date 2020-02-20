package com.cwa.shop.dao.impl;

import com.cwa.shop.dao.AccountDao;
import com.cwa.shop.model.Account;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

@Repository
public class AccountDaoImpl implements AccountDao {
    private final SessionFactory sessionFactory;

    @Autowired
    public AccountDaoImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public List<Account> getAllAccounts() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery<Account> cp = cb.createQuery(Account.class);
        Root<Account> root = cp.from(Account.class);
        cp.select(root);
        Query query = session.createQuery(cp);
        return query.getResultList();
    }

    @Override
    public void deleteAccount(int id) {
        Session session = sessionFactory.getCurrentSession();
        Account account = session.byId(Account.class).load(id);
        session.delete(account);

    }

    @Override
    public void saveAccount(Account account) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(account);


    }

    @Override
    public Account getAccount(int id) {
        Session session = sessionFactory.getCurrentSession();
        Account theAccount = session.get(Account.class, id);
        return theAccount;

    }


}
