def authenticate_agent(rank, name, credentials)
  if (rank == "007" && name == "Emmanuel Ogah") || credentials == "abcd"
    puts "Access granted. Please proceed to 5th floor"
  else
    puts "Access denied!"
  end
end

authenticate_agent("07", "Emmanuel Ogah", "abc")
