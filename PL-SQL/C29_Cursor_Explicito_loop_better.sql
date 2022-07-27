SET SERVEROUTPUT ON;
BEGIN
    FOR region IN (
        SELECT
            *
        FROM
            regions
    ) LOOP
        dbms_output.put_line(region.region_name);
    END LOOP;
END;