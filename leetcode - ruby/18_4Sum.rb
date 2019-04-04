def four_sum(nums, target)
    length = nums.length
    return [] if length < 4
    res = []
    # By sorting the array, we are able to shift the 3rd and 4th pointers to get
    # closer to the target value. It also allows for early breaks and exits from
    # the loops because we know when it is impossible to reach the target value
    # in the current range.
    nums = nums.sort
    # In our 4sum solution, each iteration deals with a shorter array, as we go
    # through all of the possibilities that include the nums[idx].
    (length - 3).times do |idx|
        # After our very first value, we should check and deal with duplicates by
        # skipping over them because we've already obtained all solutions that include
        # it as a starting value.
        if idx > 0 && nums[idx] == nums[idx - 1]
            next
        end
        
        (idx+1..length-3).each do |second|
            # To speed things along, we break out of 2 if the smallest combination
            # is above the target. 
            break if nums[idx] + nums[second] + nums[second + 1] + nums[second + 2] > target
            # We skip to the next second if we are unable to reach the target
            # with the largest combination of potential values.
            next if nums[idx] + nums[second] + nums[-2] + nums[-1] < target

            # We want to skip over repeat values for second, but second's default
            # value is based off of idx, so we must only ever skip values after the
            # first value that second points with each new idx.
            if second > idx + 1 && nums[second] == nums[second - 1]
                next
            end
            
            third, fourth = second + 1, length - 1

            # We shift the left and right pointers to closer approach the target
            # value. If we do achieve the target value, we then shift the values
            # at least once because there might be more unique pairs that can achieve our
            # target value. To that end, we must continue shifting left and right
            # if the new values are duplicates of the most recent answer.
            while third < fourth
                sum = nums[idx] + nums[second] + nums[third] + nums[fourth]
                if sum > target
                    fourth -= 1
                elsif sum < target
                    third += 1
                else
                    res << [nums[idx], nums[second], nums[third], nums[fourth]]  
                    third += 1
                    fourth -= 1
                    while third < fourth && nums[third] == nums[third - 1]
                        third += 1
                    end
                    while third < fourth && nums[fourth] == nums[fourth + 1]
                        fourth -= 1
                    end
                end
            end
        end
    end
    res
end

# Run in IDE: "ctrl + alt + n"
p four_sum([0,0,0,0], 0)
p four_sum([-2,-1,0,0,1,2], 0)