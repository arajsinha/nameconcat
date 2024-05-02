using NameService as service from '../../srv/name';
annotate service.Name with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'First Name',
                Value : FirstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Last Name',
                Value : LastName,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'First Name',
            Value : FirstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Last Name',
            Value : LastName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Full Name',
            Value : FullName,
        },
    ],
);

