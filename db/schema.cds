namespace sap.concat;

using { cuid } from '@sap/cds/common';

entity Name : cuid {
    FirstName                 : String;
    LastName                  : String;
    FullName                  : String;
}
