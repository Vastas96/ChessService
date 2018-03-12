# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MAGNUS_CARLSEN = 1
LEVON_ARONIAN = 2
FABIANO_CARUANA = 3
SERGEY_KARJAKIN = 4
VLADIMIR_KRAMNIK = 5
MVL = 6

Player.create(name: 'Magnus Carlsen', title: 'GM')
Player.create(name: 'Levon Aronian', title: 'GM')
Player.create(name: 'Fabiano Caruana', title: 'GM')
Player.create(name: 'Sergey Karjakin', title: 'GM')
Player.create(name: 'Vladimir Kramnik', title: 'GM')
Player.create(name: 'Maxime Vachier-Lagrave', title: 'GM')


Game.create(date: '2004.03.17', white_id: MAGNUS_CARLSEN, 
	black_id: LEVON_ARONIAN, movetext: '1. d4 d5 2. c4 e6 3. Nc3 Nf6 4. Bg5 Be7 5. e3 Nbd7 6. Nf3 O-O 7. Qc2 h6 8. Bh4 b6 9. cxd5 exd5 10. Qa4 Bb7 11. Ba6 Bxa6 12. Qxa6 c6 13. O-O Qc8 14. Qa4 Re8 15. Rac1 Qb7 16. Qc2 a5 17. Bxf6 Nxf6 18. e4 dxe4 19. Nxe4 c5 20. Nxf6+ Bxf6 21. dxc5 bxc5 22. b3 a4 23. Qxc5 axb3 24. axb3 Qxb3 25. Qc4')
Game.create(date: '2010.01.31', white_id: MAGNUS_CARLSEN, 
	black_id: FABIANO_CARUANA, movetext: '1. e4 e5 2. Nf3 Nc6 3. Bb5 a6 4. Ba4 Nf6 5. d3 d6 6. c3 g6 7. Nbd2 Bg7 8. Nf1 O-O 9. Bg5 d5 10. Qe2 Qd6 11. Bxf6 Bxf6 12. Ne3 Ne7 13. Bb3 c6 14. h4 Be6 15. Ng5 Bd7 16. Rd1 Rad8 17. Qf3 h6 18. Nc4 dxc4 19. dxc4 Nd5 20. Nh3 h5 21. Qg3 Bg4 22. Rd2 Bxh4 23. Qxh4 Qf6 24. Qxf6 Nxf6 25. Ng5 c5 26. f3 Bc8 27. Ba4 Kg7 28. Rxd8 Rxd8 29. b4 Rd3 30. bxc5 Rxc3 31. Kd2 Rxc4 32. Bb3 Rxc5 33. Nxf7 a5 34. Rc1 Rxc1 35. Kxc1 a4 36. Bc4 b5 37. Nd6 bxc4 38. Nxc8 h4 39. Nb6 Nh5 40. Nxc4 Kf6 41. Kd2 Nf4 42. Ke3 Nxg2+ 43. Kf2 Nf4 44. Nb2 a3 45. Nc4 Nd3+ 46. Kg2 Kg5 47. Nxa3 Kf4 48. Nc2 Nb2 49. Nb4 h3+ 50. Kxh3 Kxf3 51. Kh4 Kf4 52. Nd5+ Kxe4 53. Ne7 Kf3 54. Nxg6 e4 55. Ne5+ Kf4 56. Ng4 Na4')