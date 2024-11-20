package com.infosys.movieSystem.dao;

import java.util.List;

import com.infosys.movieSystem.bean.TicketBooking;

public interface TicketBookingDao {
    
    // Method to save a TicketBooking object
    public void save(TicketBooking ticketBooking);

    // Method to retrieve all TicketBooking objects
    public List<TicketBooking> findAll();

    // Method to retrieve a specific TicketBooking by its ticketId
    public TicketBooking getTicket(Long ticketId);

    // Method to generate a new ticketId (implementation would provide the logic)
    public Long generateId();
}
