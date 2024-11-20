package com.infosys.movieSystem.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.infosys.movieSystem.bean.TicketBooking;

@Repository
public class TicketBookingDaoImpl implements TicketBookingDao {

    @Autowired
    private TicketBookingRepository repository;

    @Override
    public void save(TicketBooking ticketBooking) {
        repository.save(ticketBooking);
    }

    @Override
    public List<TicketBooking> findAll() {
        return repository.findAll();
    }

    @Override
    public TicketBooking getTicket(Long ticketId) {
        return repository.findById(ticketId).orElse(null); // Return null if not found
    }

    @Override
    public Long generateId() {
        Long val = repository.getLastId();
        if (val == null) {
            val = 10000001L; // Starting ID
        } else {
            val = val + 1;
        }
        return val;
    }
}
