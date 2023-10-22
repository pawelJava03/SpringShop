package sklep.repository;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import sklep.model.Product;

/* Gdy w projekcie umieścimy interfejs rozszerzający interfejs JpaRepository (albo podobny)
 * i oznaczymy go adnotacją @Repository (albo skonfigurujemy w inny sposób...),
 * to Spring AUTOMATYCZNIE UTWORZY IMPLEMENTACJĘ tego interfejsu.
 * Dzięki temu "za darmo" mamy metody dający podstawowy dostęp do tabel.

 * Dodatkowo w interfejsie można dopisać własne metody, w których nazwie kryje się zasada działania.
 * Np. findByPriceBetween szuka produktów o cenie między min i max.
 *
 * findByEmail - szuka rekordów z polem email równym parametrowi.
 *
 * przejście do innych tabel / encji:
 * List<Employee> findByDepartment_Location_City(String city)
 * jakby w Javie sprawdzić: employee.getDepartment().getLocation.getCity().equals(city)
 *
 * https://www.baeldung.com/spring-data-derived-queries
 */


public interface ProductRepository extends JpaRepository<Product, Integer> {

    List<Product> findByProductName(String name);

    List<Product> findByProductNameContainsIgnoringCase(String name);

    List<Product> findByProductNameContainingIgnoringCaseAndPriceBetween(String name, BigDecimal min, BigDecimal max);

    List<Product> findByPriceBetween(BigDecimal min, BigDecimal max);


    // Można też do dowolnej metody dopisać @Query i wtedy wykona sie ppdane przez nas zapytanie
}


