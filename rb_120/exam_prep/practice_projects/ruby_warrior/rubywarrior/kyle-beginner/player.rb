class Player
  FULL_HEALTH = 20

  def play_turn(warrior)
    if feel_around_and_rescue_captives(warrior)
      # turn is over
    elsif time_to_run_from_archers(warrior)
      warrior.walk!(:backward)
    elsif time_to_run_toward_archers(warrior)
      warrior.walk!(:forward)
    elsif time_to_heal_up(warrior)
      warrior.rest!
    elsif warrior.feel.empty?
      warrior.walk!
    else
      warrior.attack!
    end

    @health = warrior.health
  end

  def feel_around_and_rescue_captives(warrior)
    if warrior.feel(:forward).captive?
      warrior.rescue!(:forward)
      return :done
    elsif warrior.feel(:backward).captive?
      warrior.rescue!(:backward)
      return :done
    end
  end

  def losing_health(warrior)
    warrior.health < @health if @health != nil
  end
  
  def not_full_health(warrior)
    warrior.health < FULL_HEALTH
  end

  def time_to_run_from_archers(warrior)
    losing_health(warrior) && (warrior.health < FULL_HEALTH / 2)
  end

  def time_to_run_toward_archers(warrior)
    losing_health(warrior) && warrior.feel.empty?
  end

  def time_to_heal_up(warrior)
    !losing_health(warrior) && not_full_health(warrior)
  end
end
