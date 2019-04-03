def four_sum(nums, target)
    length = nums.length
    return [] if length < 4
    res = []
    nums = nums.sort
    (length - 3).times do |idx|
        if idx > 0 && nums[idx] == nums[idx - 1]
            next
        end
        
        (idx+1..length-3).each do |second|
            break if nums[idx] + nums[second] + nums[second + 1] + nums[second + 2] > target
            next if nums[idx] + nums[second] + nums[-2] + nums[-1] < target
            if second > idx + 1 && nums[second] == nums[second - 1]
                next
            end
            
            third, fourth = second + 1, length - 1
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
end