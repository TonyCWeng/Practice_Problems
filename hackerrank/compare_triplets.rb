=begin
Alice and Bob each created one problem for HackerRank. A reviewer rates the two challenges, awarding points on a scale from  to  for three categories: problem clarity, originality, and difficulty.

We define the rating for Alice's challenge to be the triplet , and the rating for Bob's challenge to be the triplet .

Your task is to find their comparison points by comparing  with ,  with , and  with .

If , then Alice is awarded  point.
If , then Bob is awarded  point.
If , then neither person receives a point.
Comparison points is the total points a person earned.

Given  and , can you compare the two challenges and print their respective comparison points?

=end
def solve(a0, a1, a2, b0, b1, b2)
    # Complete this function
  alice = 0
  bob = 0
  case a0 <=> b0
  when 1
    alice += 1
  when -1
    bob += 1
  else
    alice += 0
  end

  case a1 <=> b1
  when 1
    alice += 1
  when -1
    bob += 1
  else
    alice += 0
  end

  case a2 <=> b2
  when 1
    alice += 1
  when -1
    bob += 1
  else
    alice += 0
  end
  [alice, bob]
end

def solve(a0, a1, a2, b0, b1, b2)
  alice_arr = [a0, a1, a2]
  bob_arr = [b0, b1, b2]
  alice = 0
  bob = 0
  i = 0
  while i < alice.length
    case alice[i] <=> bob[i]
    when 1
      alice += 1
    when 0
      alice += 0
    when -1
      bob += 1
    end
    i += 1
  end
  [alice, bob]
end
