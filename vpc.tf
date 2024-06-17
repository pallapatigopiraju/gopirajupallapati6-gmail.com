resource "aws_vpc_group "main {
    name = "ntier"
    location = "us-west-2a"
}

resource "aws_vpc_group "current {
    name = "ntier-primary"
    resource_group_name = "ntier"
    address_space = [ "10.100.0.0/16" ]
    location = "us-west-2a"

}

resource "aws_vpc_group "web {
    name = "web"
    resource_group_name = "ntier" 
    virtual_network_name = "ntier-primary"
    address_prefixes = [ "10.100.0.0/24" ]


 
}

resource "aws_vpc_group "business {
    name = "business"
    resource_group_name = "ntier"
    virtual_network_name = "ntier-primary"
    address_prefixes = [ "10.100.1.0/24" ]

}

resource "aws_vpc_group "data {
    name = "data"
    resource_group_name = "ntier"
    virtual_network_name = "ntier-primary"
    address_prefixes = [ "10.100.2.0/24" ]

}
