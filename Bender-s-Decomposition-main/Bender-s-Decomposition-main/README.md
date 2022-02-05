# Bender-s-Decomposition
Coffee machine management problem is solved to demonstrate Bender's Decomposition.

The Benders' decomposition is generally applied to linear problems, where the variables can
be separated in two parts in such a way that, when fixing the value of one part the problem
associated with the remaining ones has a straightforward solution

Consider an automatic coffee machine located in a public library. Every two days the supplier
fills the machine up with coffee, milk and coins for change. Let x denote the amount of coins
introduced in the machine. Since there is a risk for these coins to be stolen, the supplier must
decide the correct amount x to avoid both excess and lack of coins. Clearly, the need of coins
for change depends on the demand of milk and coffee. The supplier estimated that for each
sold cap of coffee the expected need of coins is c_t and for each sold cap of milk the expected
need of coins is m_t . The demand of milk and coffee in the machine is considered as discrete
random variables  The coin box of the coffee machine has a maximum
capacity of u euros and the supplier estimated that the cost of leaving them in the coin box
can be quantified as c euros per each deposited euro.
If the demand of milk and coffee is such that the required coins for change exceed x , then
many customers will complain and the supplier shall have a cost of q for each euro missing in
the coin box, that is, for each excess of demand
