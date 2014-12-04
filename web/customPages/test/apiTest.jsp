<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ page import="crm.CommunityMemberTable" %>
<%@ page import="dataRepresentation.DropDownTableReference" %>
<html>



<%
        /***************************************************************************
         *
         *      Create all the necessary data to populate the forms
         *
         */


    String applicationKey = "TestApplicaton";

        DropDownTableReference memberDropDown = new CommunityMemberTable().getDropDown();






%>



    <head>
        <title>Pukka Community CRM API tester</title>
        <link rel="stylesheet" type="text/css" href="../../doc/docstyle.css" title="Style">
    </head>

<body>

<h1>Test for the itClarifies web services</h1>

<div style="float:left; width:67%">

    <p>For all the services there are some generic parameters:</p>

    <ul>
        <li><span class="code">&applicationKey=&lt;token&gt;</span>, (Mandatory)To identify the application</li>

    </ul>

</div>

<div style="float:right; width:33%">

    <ul>
        <li><a href="#User">Users</a></li>
        <li><a href="#Communication">Communication</a></li>
        <li><a href="#Transactions">Transactions</a></li>

    </ul>


</div>

<div style="clear:both">&nbsp;</div>

<div style="width:100%">

    <h1>User and Login</h1>
    <p>Register a new Community Member</p>
</div>

<div style="float:left; width:66%">

<FORM METHOD=POST action="/Member" id="newMember" name="newMember">
    <fieldset style="height:320px">
        <h3>Add Community Member</h3>
        <p>Registers a new member</p>

            <div style="float:left; width:50%">
                <p>	<label for="UserName">UserName</label>
                    <input type="text" id="UserName" name="Username">
                </p>

                <p>	<label for="First">First Name</label>
                    <input type="text" id="First" name="First">
                </p>

                <p>	<label for="Last">Last Name</label>
                    <input type="text" id="Last" name="Last">
                </p>

                <p>	<label for="Email">Email</label>
                    <input type="text" id="Email" name="Email">
                </p>

                <p>	<label for="ExternalId">ExternalId</label>
                    <input type="text" id="ExternalId" name="ExternalId">
                </p>

                <p>	<label for="Sex">Sex</label>
                    <input type="text" id="Sex" name="Sex">
                </p>

                <p>	<label for="Tag">Campaign Tag</label>
                    <input type="text" id="Tag" name="Tag">
                </p>

                <input type="hidden" name="html" value="on">

                <p>
                    <input type="submit" value="Register" class="btn primary" id="submit_member" />
                </p>

            </div>

        <div style="float:left; width:50%">

                <h3>Response json:</h3>
                <p class="code">{ "Member" : "&lt;key&gt;" }</p>

        </div>


    </fieldset>

</FORM>


</div>
<div style="float:left; width:33%">


</div>


<div style="float:left; width:33%">


</div>



<div style="clear:both">&nbsp;</div>

<div style="width:100%">

    <a id="Communication"></a>
    <h1>Communication</h1>
    <p>Register communication between users</p>
</div>

<div style="float:left; width:33%">

<FORM METHOD=POST action="/Contact" id="contact" name="contact">
    <fieldset style="height:320px">
        <h3>Register a contact</h3>
        <p>Registers a new contact between two members</p>

                <p>	<label for="Contact_From">From</label>
                    <% out.print(memberDropDown.generate("From", "Contact_From", null, "", "", false)); %>
                </p>

                <p>	<label for="Contact_To">To</label>
                    <% out.print(memberDropDown.generate("To", "Contact_To", null, "", "", false)); %>
                </p>

                <p>	<label for="Contact_Type">Type</label>
                    <input type="text" id="Contact_Type" name="Type">
                </p>


                <input type="hidden" name="html" value="on">

                <p>
                    <input type="submit" value="Register" class="btn primary" id="submit_contact" />
                </p>


                <h3>Response json:</h3>
                <p class="code">{ "Contact" : "OK" }</p>


    </fieldset>

</FORM>


</div>

<div style="float:left; width:33%">

<FORM METHOD=POST action="/Message" id="message" name="message">
    <fieldset style="height:320px">
        <h3>Register a message</h3>
        <p>Registers a new message between two members</p>

                <p>	<label for="Message_From">From</label>
                    <% out.print(memberDropDown.generate("From", "Message_From", null, "", "", false)); %>
                </p>

                <p>	<label for="Message_To">To</label>
                    <% out.print(memberDropDown.generate("To", "Message_To", null, "", "", false)); %>
                </p>

                <p>	<label for="Message_id">Type</label>
                    <input type="text" id="Message_id" name="MessageId">
                </p>


                <input type="hidden" name="html" value="on">

                <p>
                    <input type="submit" value="Register" class="btn primary" id="submit_message" />
                </p>


                <h3>Response json:</h3>
                <p class="code">{ "Contact" : "OK" }</p>


    </fieldset>

</FORM>


</div>

<div style="clear:both">&nbsp;</div>


<div style="width:100%">

    <a id="Transactions"></a>
    <h1>Transactions</h1>
    <p>Register monetary transactions</p>
</div>

<div style="float:left; width:33%">

<FORM METHOD=POST action="/Transaction" id="transaction_form" name="transaction">
    <fieldset style="height:320px">
        <h3>Register a purchase</h3>
        <p>Registers a new purchase from a member</p>


                <p>	<label for="Transaction_Member">From</label>
                    <% out.print(memberDropDown.generate("Member", "Transaction_Member", null, "", "", false)); %>
                </p>



                <p>	<label for="Deposit_Product">Product Name</label>
                    <input type="text" id="Deposit_Product" name="Product">
                </p>

                <p>	<label for="Deposit_Units">#Units</label>
                    <input type="text" id="Deposit_Units" name="Units">
                </p>

                <p>	<label for="Deposit_Validity">Validity</label>
                    <input type="text" id="Deposit_Validity" name="Validity">
                </p>

                <p>	<label for="Deposit_Amount">Amount</label>
                    <input type="text" id="Deposit_Amount" name="TotalValue">
                </p>

                <p>	<label for="Deposit_Ref">Reference</label>
                    <input type="text" id="Deposit_Ref" name="ExternalRef">
                </p>


                <input type="hidden" name="html" value="on">

                <p>
                    <input type="submit" value="Register" class="btn primary" id="submit_deposit" />
                </p>


                <h3>Response json:</h3>
                <p class="code">{ "Contact" : "OK" }</p>


    </fieldset>

</FORM>


</div>


</body>


</html>