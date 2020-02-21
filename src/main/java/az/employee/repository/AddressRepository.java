package az.employee.repository;

import az.employee.domain.Address;

public interface AddressRepository {

    Address addAddress(Address address);

    Address updateAddress(Address address);

    void deleteAddress(long id);
}
