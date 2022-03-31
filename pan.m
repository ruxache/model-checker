#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM p1 */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!((ship_status[0]==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!( !((now.ship_status[0]==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:8 - [(!((ship_status[0]==2)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][8] = 1;
		if (!( !((now.ship_status[0]==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 6: // STATE 1 - singlelock.pml:390 - [(run monitor())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		if (!(addproc(II, 1, 3, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - singlelock.pml:391 - [(run main_control())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!(addproc(II, 1, 2, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 3 - singlelock.pml:395 - [proc = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 4 - singlelock.pml:397 - [((proc<1))] (11:0:6 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		if (!((((int)((P4 *)_this)->proc)<1)))
			continue;
		/* merge: doors_status.lower = 2(11, 5, 11) */
		reached[4][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = now.doors_status.lower;
		now.doors_status.lower = 2;
#ifdef VAR_RANGES
		logval("doors_status.lower", now.doors_status.lower);
#endif
		;
		/* merge: doors_status.higher = 2(11, 6, 11) */
		reached[4][6] = 1;
		(trpt+1)->bup.ovals[1] = now.doors_status.higher;
		now.doors_status.higher = 2;
#ifdef VAR_RANGES
		logval("doors_status.higher", now.doors_status.higher);
#endif
		;
		/* merge: slide_status.lower = 2(11, 7, 11) */
		reached[4][7] = 1;
		(trpt+1)->bup.ovals[2] = now.slide_status.lower;
		now.slide_status.lower = 2;
#ifdef VAR_RANGES
		logval("slide_status.lower", now.slide_status.lower);
#endif
		;
		/* merge: slide_status.higher = 2(11, 8, 11) */
		reached[4][8] = 1;
		(trpt+1)->bup.ovals[3] = now.slide_status.higher;
		now.slide_status.higher = 2;
#ifdef VAR_RANGES
		logval("slide_status.higher", now.slide_status.higher);
#endif
		;
		/* merge: lock_water_level = 1(11, 9, 11) */
		reached[4][9] = 1;
		(trpt+1)->bup.ovals[4] = now.lock_water_level;
		now.lock_water_level = 1;
#ifdef VAR_RANGES
		logval("lock_water_level", now.lock_water_level);
#endif
		;
		/* merge: lock_is_occupied = 0(11, 10, 11) */
		reached[4][10] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 10: // STATE 11 - singlelock.pml:404 - [(run lock(proc))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][11] = 1;
		if (!(addproc(II, 1, 0, ((int)((P4 *)_this)->proc))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 12 - singlelock.pml:405 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][12] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = (((int)((P4 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 13 - singlelock.pml:406 - [((proc==1))] (26:0:2 - 1)
		IfNotBlocked
		reached[4][13] = 1;
		if (!((((int)((P4 *)_this)->proc)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P4 *)_this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->proc = 0;
		/* merge: goto :b7(26, 14, 26) */
		reached[4][14] = 1;
		;
		/* merge: proc = 0(26, 18, 26) */
		reached[4][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[4][27] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 13: // STATE 18 - singlelock.pml:410 - [proc = 0] (0:26:1 - 3)
		IfNotBlocked
		reached[4][18] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 27, 26) */
		reached[4][27] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 14: // STATE 19 - singlelock.pml:412 - [((proc<1))] (22:0:2 - 1)
		IfNotBlocked
		reached[4][19] = 1;
		if (!((((int)((P4 *)_this)->proc)<1)))
			continue;
		/* merge: ship_status[proc] = 3(22, 20, 22) */
		reached[4][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P4 *)_this)->proc), 1) ];
		now.ship_status[ Index(((P4 *)_this)->proc, 1) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[:init::proc]", now.ship_status[ Index(((int)((P4 *)_this)->proc), 1) ]);
#endif
		;
		/* merge: ship_pos[proc] = 0(22, 21, 22) */
		reached[4][21] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 1) ]);
		now.ship_pos[ Index(((P4 *)_this)->proc, 1) ] = 0;
#ifdef VAR_RANGES
		logval("ship_pos[:init::proc]", ((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 1) ]));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 15: // STATE 22 - singlelock.pml:415 - [(run ship(proc))] (0:0:0 - 1)
		IfNotBlocked
		reached[4][22] = 1;
		if (!(addproc(II, 1, 1, ((int)((P4 *)_this)->proc))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 23 - singlelock.pml:416 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[4][23] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = (((int)((P4 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 24 - singlelock.pml:417 - [((proc==1))] (35:0:2 - 1)
		IfNotBlocked
		reached[4][24] = 1;
		if (!((((int)((P4 *)_this)->proc)==1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P4 *)_this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P4 *)_this)->proc = 0;
		/* merge: goto :b8(35, 25, 35) */
		reached[4][25] = 1;
		;
		/* merge: proc = 0(35, 29, 35) */
		reached[4][29] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[4][36] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 18: // STATE 29 - singlelock.pml:423 - [proc = 0] (0:35:1 - 3)
		IfNotBlocked
		reached[4][29] = 1;
		(trpt+1)->bup.oval = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[4][36] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 19: // STATE 30 - singlelock.pml:425 - [((proc<1))] (35:0:2 - 1)
		IfNotBlocked
		reached[4][30] = 1;
		if (!((((int)((P4 *)_this)->proc)<1)))
			continue;
		/* merge: nr_of_ships_at_pos[ship_pos[proc]] = (nr_of_ships_at_pos[ship_pos[proc]]+1)(35, 31, 35) */
		reached[4][31] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P4 *)_this)->proc, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 1) ]), 2) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[:init::proc]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P4 *)_this)->proc), 1) ]), 2) ]));
#endif
		;
		/* merge: proc = (proc+1)(35, 32, 35) */
		reached[4][32] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P4 *)_this)->proc);
		((P4 *)_this)->proc = (((int)((P4 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P4 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[4][36] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 20: // STATE 39 - singlelock.pml:429 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][39] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC monitor */
	case 21: // STATE 1 - singlelock.pml:369 - [assert(!(((doors_status.lower==1)&&(doors_status.higher==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		spin_assert( !(((now.doors_status.lower==1)&&(now.doors_status.higher==1))), " !(((doors_status.lower==1)&&(doors_status.higher==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 2 - singlelock.pml:372 - [assert(!(((doors_status.lower==1)&&(slide_status.higher==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		spin_assert( !(((now.doors_status.lower==1)&&(now.slide_status.higher==1))), " !(((doors_status.lower==1)&&(slide_status.higher==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 3 - singlelock.pml:375 - [assert(!(((doors_status.higher==1)&&(slide_status.lower==1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		spin_assert( !(((now.doors_status.higher==1)&&(now.slide_status.lower==1))), " !(((doors_status.higher==1)&&(slide_status.lower==1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 4 - singlelock.pml:378 - [assert(!(((doors_status.lower==1)&&(lock_water_level!=2))))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		spin_assert( !(((now.doors_status.lower==1)&&(now.lock_water_level!=2))), " !(((doors_status.lower==1)&&(lock_water_level!=2)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 5 - singlelock.pml:381 - [assert(!(((doors_status.higher==1)&&(lock_water_level!=1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][5] = 1;
		spin_assert( !(((now.doors_status.higher==1)&&(now.lock_water_level!=1))), " !(((doors_status.higher==1)&&(lock_water_level!=1)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 6 - singlelock.pml:383 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC main_control */
	case 27: // STATE 1 - singlelock.pml:246 - [request_low?1] (0:0:0 - 1)
		reached[2][1] = 1;
		if (q_zero(now.request_low))
		{	if (boq != now.request_low) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_low) == 0) continue;

		XX=1;
		if (1 != qrecv(now.request_low, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.request_low-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.request_low, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_low);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.request_low))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 28: // STATE 2 - singlelock.pml:249 - [low_req = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.oval = ((int)low_req);
		low_req = 1;
#ifdef VAR_RANGES
		logval("low_req", ((int)low_req));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 3 - singlelock.pml:252 - [((doors_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!((now.doors_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 4 - singlelock.pml:254 - [((slide_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!((now.slide_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 5 - singlelock.pml:255 - [change_slide_pos!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		if (q_full(now.change_slide_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos, 0, 1, 1);
		if (q_zero(now.change_slide_pos)) { boq = now.change_slide_pos; };
		_m = 2; goto P999; /* 0 */
	case 32: // STATE 6 - singlelock.pml:255 - [slide_pos_changed?1] (0:0:0 - 1)
		reached[2][6] = 1;
		if (q_zero(now.slide_pos_changed))
		{	if (boq != now.slide_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.slide_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 33: // STATE 7 - singlelock.pml:256 - [((slide_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][7] = 1;
		if (!((now.slide_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 11 - singlelock.pml:260 - [((doors_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (!((now.doors_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 12 - singlelock.pml:261 - [change_doors_pos!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, 1, 1);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 36: // STATE 13 - singlelock.pml:261 - [doors_pos_changed?1] (0:0:0 - 1)
		reached[2][13] = 1;
		if (q_zero(now.doors_pos_changed))
		{	if (boq != now.doors_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.doors_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 37: // STATE 14 - singlelock.pml:262 - [((doors_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][14] = 1;
		if (!((now.doors_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 18 - singlelock.pml:266 - [((slide_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		if (!((now.slide_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 19 - singlelock.pml:267 - [change_slide_pos!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][19] = 1;
		if (q_full(now.change_slide_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos, 0, 2, 1);
		if (q_zero(now.change_slide_pos)) { boq = now.change_slide_pos; };
		_m = 2; goto P999; /* 0 */
	case 40: // STATE 20 - singlelock.pml:267 - [slide_pos_changed?1] (0:0:0 - 1)
		reached[2][20] = 1;
		if (q_zero(now.slide_pos_changed))
		{	if (boq != now.slide_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.slide_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 41: // STATE 21 - singlelock.pml:268 - [((slide_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][21] = 1;
		if (!((now.slide_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 25 - singlelock.pml:270 - [change_doors_pos!2] (0:0:0 - 3)
		IfNotBlocked
		reached[2][25] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, 2, 1);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 43: // STATE 26 - singlelock.pml:270 - [doors_pos_changed?1] (0:0:0 - 1)
		reached[2][26] = 1;
		if (q_zero(now.doors_pos_changed))
		{	if (boq != now.doors_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.doors_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 44: // STATE 27 - singlelock.pml:271 - [((doors_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][27] = 1;
		if (!((now.doors_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 31 - singlelock.pml:273 - [observed_low[0]?1] (0:0:0 - 3)
		reached[2][31] = 1;
		if (q_zero(now.observed_low[0]))
		{	if (boq != now.observed_low[0]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.observed_low[0]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.observed_low[0], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.observed_low[0]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.observed_low[0], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.observed_low[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.observed_low[0]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 46: // STATE 32 - singlelock.pml:275 - [request_high?1] (0:0:0 - 1)
		reached[2][32] = 1;
		if (q_zero(now.request_high))
		{	if (boq != now.request_high) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_high) == 0) continue;

		XX=1;
		if (1 != qrecv(now.request_high, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.request_high-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.request_high, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_high);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.request_high))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 47: // STATE 33 - singlelock.pml:277 - [high_req = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[2][33] = 1;
		(trpt+1)->bup.oval = ((int)high_req);
		high_req = 1;
#ifdef VAR_RANGES
		logval("high_req", ((int)high_req));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 34 - singlelock.pml:280 - [((doors_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][34] = 1;
		if (!((now.doors_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 35 - singlelock.pml:282 - [((slide_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][35] = 1;
		if (!((now.slide_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 36 - singlelock.pml:283 - [change_slide_pos!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		if (q_full(now.change_slide_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos, 0, 2, 1);
		if (q_zero(now.change_slide_pos)) { boq = now.change_slide_pos; };
		_m = 2; goto P999; /* 0 */
	case 51: // STATE 37 - singlelock.pml:283 - [slide_pos_changed?1] (0:0:0 - 1)
		reached[2][37] = 1;
		if (q_zero(now.slide_pos_changed))
		{	if (boq != now.slide_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.slide_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 52: // STATE 38 - singlelock.pml:284 - [((slide_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][38] = 1;
		if (!((now.slide_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 42 - singlelock.pml:288 - [((doors_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][42] = 1;
		if (!((now.doors_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 43 - singlelock.pml:289 - [change_doors_pos!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][43] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, 2, 1);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 55: // STATE 44 - singlelock.pml:289 - [doors_pos_changed?1] (0:0:0 - 1)
		reached[2][44] = 1;
		if (q_zero(now.doors_pos_changed))
		{	if (boq != now.doors_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.doors_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 56: // STATE 45 - singlelock.pml:290 - [((doors_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][45] = 1;
		if (!((now.doors_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 49 - singlelock.pml:294 - [((slide_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][49] = 1;
		if (!((now.slide_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 50 - singlelock.pml:295 - [change_slide_pos!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][50] = 1;
		if (q_full(now.change_slide_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos, 0, 1, 1);
		if (q_zero(now.change_slide_pos)) { boq = now.change_slide_pos; };
		_m = 2; goto P999; /* 0 */
	case 59: // STATE 51 - singlelock.pml:295 - [slide_pos_changed?1] (0:0:0 - 1)
		reached[2][51] = 1;
		if (q_zero(now.slide_pos_changed))
		{	if (boq != now.slide_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.slide_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 60: // STATE 52 - singlelock.pml:296 - [((slide_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][52] = 1;
		if (!((now.slide_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 56 - singlelock.pml:298 - [change_doors_pos!1] (0:0:0 - 3)
		IfNotBlocked
		reached[2][56] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, 1, 1);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 62: // STATE 57 - singlelock.pml:298 - [doors_pos_changed?1] (0:0:0 - 1)
		reached[2][57] = 1;
		if (q_zero(now.doors_pos_changed))
		{	if (boq != now.doors_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.doors_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 63: // STATE 58 - singlelock.pml:299 - [((doors_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][58] = 1;
		if (!((now.doors_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 62 - singlelock.pml:301 - [observed_high[0]?1] (0:0:0 - 3)
		reached[2][62] = 1;
		if (q_zero(now.observed_high[0]))
		{	if (boq != now.observed_high[0]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.observed_high[0]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.observed_high[0], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.observed_high[0]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.observed_high[0], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.observed_high[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.observed_high[0]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 65: // STATE 63 - singlelock.pml:303 - [request_low?0] (0:0:0 - 1)
		reached[2][63] = 1;
		if (q_zero(now.request_low))
		{	if (boq != now.request_low) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_low) == 0) continue;

		XX=1;
		if (0 != qrecv(now.request_low, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.request_low-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.request_low, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_low);
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.request_low))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 66: // STATE 64 - singlelock.pml:306 - [(lock_is_occupied)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][64] = 1;
		if (!(((int)now.lock_is_occupied)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 65 - singlelock.pml:310 - [((doors_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][65] = 1;
		if (!((now.doors_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 66 - singlelock.pml:312 - [((slide_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][66] = 1;
		if (!((now.slide_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 67 - singlelock.pml:313 - [change_slide_pos!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][67] = 1;
		if (q_full(now.change_slide_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos, 0, 2, 1);
		if (q_zero(now.change_slide_pos)) { boq = now.change_slide_pos; };
		_m = 2; goto P999; /* 0 */
	case 70: // STATE 68 - singlelock.pml:314 - [slide_pos_changed?1] (0:0:0 - 1)
		reached[2][68] = 1;
		if (q_zero(now.slide_pos_changed))
		{	if (boq != now.slide_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.slide_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 71: // STATE 69 - singlelock.pml:315 - [((slide_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][69] = 1;
		if (!((now.slide_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 73 - singlelock.pml:318 - [change_doors_pos!2] (0:0:0 - 3)
		IfNotBlocked
		reached[2][73] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, 2, 1);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 73: // STATE 74 - singlelock.pml:319 - [doors_pos_changed?1] (0:0:0 - 1)
		reached[2][74] = 1;
		if (q_zero(now.doors_pos_changed))
		{	if (boq != now.doors_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.doors_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 74: // STATE 75 - singlelock.pml:321 - [((doors_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][75] = 1;
		if (!((now.doors_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 76 - singlelock.pml:323 - [((slide_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][76] = 1;
		if (!((now.slide_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 77 - singlelock.pml:324 - [change_slide_pos!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][77] = 1;
		if (q_full(now.change_slide_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos, 0, 2, 1);
		if (q_zero(now.change_slide_pos)) { boq = now.change_slide_pos; };
		_m = 2; goto P999; /* 0 */
	case 77: // STATE 78 - singlelock.pml:325 - [slide_pos_changed?1] (0:0:0 - 1)
		reached[2][78] = 1;
		if (q_zero(now.slide_pos_changed))
		{	if (boq != now.slide_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.slide_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 78: // STATE 79 - singlelock.pml:326 - [((slide_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][79] = 1;
		if (!((now.slide_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 85 - singlelock.pml:330 - [(!(lock_is_occupied))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][85] = 1;
		if (!( !(((int)now.lock_is_occupied))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 89 - singlelock.pml:333 - [request_high?0] (0:0:0 - 1)
		reached[2][89] = 1;
		if (q_zero(now.request_high))
		{	if (boq != now.request_high) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_high) == 0) continue;

		XX=1;
		if (0 != qrecv(now.request_high, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.request_high-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.request_high, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_high);
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.request_high))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 81: // STATE 90 - singlelock.pml:335 - [(lock_is_occupied)] (0:0:0 - 1)
		IfNotBlocked
		reached[2][90] = 1;
		if (!(((int)now.lock_is_occupied)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 91 - singlelock.pml:338 - [((doors_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][91] = 1;
		if (!((now.doors_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 92 - singlelock.pml:340 - [((slide_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][92] = 1;
		if (!((now.slide_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 84: // STATE 93 - singlelock.pml:341 - [change_slide_pos!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][93] = 1;
		if (q_full(now.change_slide_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos, 0, 1, 1);
		if (q_zero(now.change_slide_pos)) { boq = now.change_slide_pos; };
		_m = 2; goto P999; /* 0 */
	case 85: // STATE 94 - singlelock.pml:342 - [slide_pos_changed?1] (0:0:0 - 1)
		reached[2][94] = 1;
		if (q_zero(now.slide_pos_changed))
		{	if (boq != now.slide_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.slide_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 86: // STATE 95 - singlelock.pml:343 - [((slide_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][95] = 1;
		if (!((now.slide_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 99 - singlelock.pml:346 - [change_doors_pos!1] (0:0:0 - 3)
		IfNotBlocked
		reached[2][99] = 1;
		if (q_full(now.change_doors_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos, 0, 1, 1);
		if (q_zero(now.change_doors_pos)) { boq = now.change_doors_pos; };
		_m = 2; goto P999; /* 0 */
	case 88: // STATE 100 - singlelock.pml:347 - [doors_pos_changed?1] (0:0:0 - 1)
		reached[2][100] = 1;
		if (q_zero(now.doors_pos_changed))
		{	if (boq != now.doors_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.doors_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 89: // STATE 101 - singlelock.pml:349 - [((doors_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][101] = 1;
		if (!((now.doors_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 90: // STATE 102 - singlelock.pml:351 - [((slide_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][102] = 1;
		if (!((now.slide_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 91: // STATE 103 - singlelock.pml:352 - [change_slide_pos!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][103] = 1;
		if (q_full(now.change_slide_pos))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos, 0, 1, 1);
		if (q_zero(now.change_slide_pos)) { boq = now.change_slide_pos; };
		_m = 2; goto P999; /* 0 */
	case 92: // STATE 104 - singlelock.pml:353 - [slide_pos_changed?1] (0:0:0 - 1)
		reached[2][104] = 1;
		if (q_zero(now.slide_pos_changed))
		{	if (boq != now.slide_pos_changed) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.slide_pos_changed))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 93: // STATE 105 - singlelock.pml:354 - [((slide_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][105] = 1;
		if (!((now.slide_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 111 - singlelock.pml:359 - [(!(lock_is_occupied))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][111] = 1;
		if (!( !(((int)now.lock_is_occupied))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 118 - singlelock.pml:362 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][118] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ship */
	case 96: // STATE 1 - singlelock.pml:137 - [(((ship_status[shipid]==5)&&(ship_pos[shipid]!=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==5)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 2 - singlelock.pml:139 - [((doors_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.doors_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 3 - singlelock.pml:140 - [request_high!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (q_full(now.request_high))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_high);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_high, 0, 1, 1);
		if (q_zero(now.request_high)) { boq = now.request_high; };
		_m = 2; goto P999; /* 0 */
	case 99: // STATE 4 - singlelock.pml:141 - [((doors_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((now.doors_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 5 - singlelock.pml:143 - [(!(lock_is_occupied))] (9:0:3 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!( !(((int)now.lock_is_occupied))))
			continue;
		/* merge: ship_status[shipid] = 4(9, 6, 9) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 4;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 1(9, 7, 9) */
		reached[1][7] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(9, 8, 9) */
		reached[1][8] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 101: // STATE 9 - singlelock.pml:147 - [observed_high[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (q_full(now.observed_high[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_high[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_high[0], 0, 1, 1);
		if (q_zero(now.observed_high[0])) { boq = now.observed_high[0]; };
		_m = 2; goto P999; /* 0 */
	case 102: // STATE 11 - singlelock.pml:149 - [(lock_is_occupied)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!(((int)now.lock_is_occupied)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 12 - singlelock.pml:150 - [observed_high[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (q_full(now.observed_high[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_high[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_high[0], 0, 1, 1);
		if (q_zero(now.observed_high[0])) { boq = now.observed_high[0]; };
		_m = 2; goto P999; /* 0 */
	case 104: // STATE 16 - singlelock.pml:153 - [(((doors_status.higher==1)&&!(lock_is_occupied)))] (107:0:3 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!(((now.doors_status.higher==1)&& !(((int)now.lock_is_occupied)))))
			continue;
		/* merge: ship_status[shipid] = 4(107, 17, 107) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 4;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 1(107, 18, 107) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(107, 19, 107) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		/* merge: goto :b2(107, 20, 107) */
		reached[1][20] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 105: // STATE 25 - singlelock.pml:159 - [((ship_status[shipid]==4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		if (!((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 26 - singlelock.pml:161 - [((doors_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!((now.doors_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 27 - singlelock.pml:162 - [request_low!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (q_full(now.request_low))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_low);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_low, 0, 1, 1);
		if (q_zero(now.request_low)) { boq = now.request_low; };
		_m = 2; goto P999; /* 0 */
	case 108: // STATE 28 - singlelock.pml:163 - [((doors_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		if (!((now.doors_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 29 - singlelock.pml:166 - [(((nr_of_ships_at_pos[(ship_pos[shipid]-1)]<2)||((ship_pos[shipid]-1)==0)))] (34:0:4 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1), 2) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1)==0))))
			continue;
		/* merge: ship_status[shipid] = 5(34, 30, 34) */
		reached[1][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 0(34, 31, 34) */
		reached[1][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]-1)(34, 32, 34) */
		reached[1][32] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(34, 33, 34) */
		reached[1][33] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 110: // STATE 34 - singlelock.pml:171 - [observed_low[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		if (q_full(now.observed_low[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_low[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_low[0], 0, 1, 1);
		if (q_zero(now.observed_low[0])) { boq = now.observed_low[0]; };
		_m = 2; goto P999; /* 0 */
	case 111: // STATE 36 - singlelock.pml:174 - [(((nr_of_ships_at_pos[(ship_pos[shipid]-1)]==2)&&((ship_pos[shipid]-1)!=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][36] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1), 2) ])==2)&&((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1)!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 112: // STATE 37 - singlelock.pml:175 - [observed_low[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		if (q_full(now.observed_low[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_low[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_low[0], 0, 1, 1);
		if (q_zero(now.observed_low[0])) { boq = now.observed_low[0]; };
		_m = 2; goto P999; /* 0 */
	case 113: // STATE 41 - singlelock.pml:179 - [(((doors_status.lower==1)&&((nr_of_ships_at_pos[(ship_pos[shipid]-1)]<2)||((ship_pos[shipid]-1)==0))))] (107:0:4 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (!(((now.doors_status.lower==1)&&((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1), 2) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1)==0)))))
			continue;
		/* merge: ship_status[shipid] = 5(107, 42, 107) */
		reached[1][42] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 0(107, 43, 107) */
		reached[1][43] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]-1)(107, 44, 107) */
		reached[1][44] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])-1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(107, 45, 107) */
		reached[1][45] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		/* merge: goto :b3(107, 46, 107) */
		reached[1][46] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 114: // STATE 51 - singlelock.pml:186 - [(((ship_status[shipid]==3)&&(ship_pos[shipid]!=1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][51] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==3)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])!=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 52 - singlelock.pml:188 - [((doors_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		if (!((now.doors_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 116: // STATE 53 - singlelock.pml:189 - [request_low!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][53] = 1;
		if (q_full(now.request_low))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_low);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_low, 0, 1, 1);
		if (q_zero(now.request_low)) { boq = now.request_low; };
		_m = 2; goto P999; /* 0 */
	case 117: // STATE 54 - singlelock.pml:190 - [((doors_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][54] = 1;
		if (!((now.doors_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 55 - singlelock.pml:192 - [(!(lock_is_occupied))] (59:0:3 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		if (!( !(((int)now.lock_is_occupied))))
			continue;
		/* merge: ship_status[shipid] = 2(59, 56, 59) */
		reached[1][56] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 2;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 1(59, 57, 59) */
		reached[1][57] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(59, 58, 59) */
		reached[1][58] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 119: // STATE 59 - singlelock.pml:196 - [observed_low[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		if (q_full(now.observed_low[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_low[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_low[0], 0, 1, 1);
		if (q_zero(now.observed_low[0])) { boq = now.observed_low[0]; };
		_m = 2; goto P999; /* 0 */
	case 120: // STATE 61 - singlelock.pml:198 - [(lock_is_occupied)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		if (!(((int)now.lock_is_occupied)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 62 - singlelock.pml:199 - [observed_low[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		if (q_full(now.observed_low[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_low[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_low[0], 0, 1, 1);
		if (q_zero(now.observed_low[0])) { boq = now.observed_low[0]; };
		_m = 2; goto P999; /* 0 */
	case 122: // STATE 66 - singlelock.pml:202 - [(((doors_status.lower==1)&&!(lock_is_occupied)))] (107:0:3 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		if (!(((now.doors_status.lower==1)&& !(((int)now.lock_is_occupied)))))
			continue;
		/* merge: ship_status[shipid] = 2(107, 67, 107) */
		reached[1][67] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 2;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 1(107, 68, 107) */
		reached[1][68] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(107, 69, 107) */
		reached[1][69] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		/* merge: goto :b4(107, 70, 107) */
		reached[1][70] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 123: // STATE 75 - singlelock.pml:208 - [((ship_status[shipid]==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][75] = 1;
		if (!((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 124: // STATE 76 - singlelock.pml:210 - [((doors_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		if (!((now.doors_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 125: // STATE 77 - singlelock.pml:211 - [request_high!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		if (q_full(now.request_high))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_high);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_high, 0, 1, 1);
		if (q_zero(now.request_high)) { boq = now.request_high; };
		_m = 2; goto P999; /* 0 */
	case 126: // STATE 78 - singlelock.pml:212 - [((doors_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		if (!((now.doors_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 127: // STATE 79 - singlelock.pml:215 - [(((nr_of_ships_at_pos[(ship_pos[shipid]+1)]<2)||((ship_pos[shipid]+1)==1)))] (84:0:4 - 1)
		IfNotBlocked
		reached[1][79] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1), 2) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1)==1))))
			continue;
		/* merge: ship_status[shipid] = 3(84, 80, 84) */
		reached[1][80] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 0(84, 81, 84) */
		reached[1][81] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]+1)(84, 82, 84) */
		reached[1][82] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(84, 83, 84) */
		reached[1][83] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 128: // STATE 84 - singlelock.pml:220 - [observed_high[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		if (q_full(now.observed_high[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_high[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_high[0], 0, 1, 1);
		if (q_zero(now.observed_high[0])) { boq = now.observed_high[0]; };
		_m = 2; goto P999; /* 0 */
	case 129: // STATE 86 - singlelock.pml:223 - [(((nr_of_ships_at_pos[(ship_pos[shipid]+1)]==2)&&((ship_pos[shipid]+1)!=1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1), 2) ])==2)&&((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1)!=1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 87 - singlelock.pml:224 - [observed_high[0]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		if (q_full(now.observed_high[0]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_high[0]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_high[0], 0, 1, 1);
		if (q_zero(now.observed_high[0])) { boq = now.observed_high[0]; };
		_m = 2; goto P999; /* 0 */
	case 131: // STATE 91 - singlelock.pml:228 - [(((doors_status.higher==1)&&((nr_of_ships_at_pos[(ship_pos[shipid]+1)]<2)||((ship_pos[shipid]+1)==1))))] (107:0:4 - 1)
		IfNotBlocked
		reached[1][91] = 1;
		if (!(((now.doors_status.higher==1)&&((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1), 2) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1)==1)))))
			continue;
		/* merge: ship_status[shipid] = 3(107, 92, 107) */
		reached[1][92] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		/* merge: lock_is_occupied = 0(107, 93, 107) */
		reached[1][93] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied);
		now.lock_is_occupied = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied", ((int)now.lock_is_occupied));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]+1)(107, 94, 107) */
		reached[1][94] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])+1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(107, 95, 107) */
		reached[1][95] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ]), 2) ]));
#endif
		;
		/* merge: goto :b5(107, 96, 107) */
		reached[1][96] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 132: // STATE 101 - singlelock.pml:235 - [(((ship_status[shipid]==5)&&(ship_pos[shipid]==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][101] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==5)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 102 - singlelock.pml:236 - [ship_status[shipid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][102] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 1;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 103 - singlelock.pml:236 - [ship_status[shipid] = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[1][103] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 135: // STATE 104 - singlelock.pml:237 - [(((ship_status[shipid]==3)&&(ship_pos[shipid]==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][104] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]==3)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 1) ])==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 136: // STATE 105 - singlelock.pml:238 - [ship_status[shipid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][105] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 1;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 106 - singlelock.pml:238 - [ship_status[shipid] = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[1][106] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 1) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 138: // STATE 110 - singlelock.pml:240 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC lock */
	case 139: // STATE 1 - singlelock.pml:94 - [change_doors_pos?2] (0:0:0 - 1)
		reached[0][1] = 1;
		if (q_zero(now.change_doors_pos))
		{	if (boq != now.change_doors_pos) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_doors_pos) == 0) continue;

		XX=1;
		if (2 != qrecv(now.change_doors_pos, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_doors_pos-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_doors_pos, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_doors_pos);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_doors_pos))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 140: // STATE 2 - singlelock.pml:96 - [((doors_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.doors_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 3 - singlelock.pml:96 - [doors_status.lower = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.doors_status.lower;
		now.doors_status.lower = 1;
#ifdef VAR_RANGES
		logval("doors_status.lower", now.doors_status.lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 4 - singlelock.pml:97 - [lock_water_level = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.lock_water_level;
		now.lock_water_level = 2;
#ifdef VAR_RANGES
		logval("lock_water_level", now.lock_water_level);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 5 - singlelock.pml:98 - [((doors_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((now.doors_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 6 - singlelock.pml:98 - [doors_status.lower = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.doors_status.lower;
		now.doors_status.lower = 2;
#ifdef VAR_RANGES
		logval("doors_status.lower", now.doors_status.lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 9 - singlelock.pml:100 - [doors_pos_changed!1] (0:0:0 - 3)
		IfNotBlocked
		reached[0][9] = 1;
		if (q_full(now.doors_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.doors_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.doors_pos_changed, 0, 1, 1);
		if (q_zero(now.doors_pos_changed)) { boq = now.doors_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 146: // STATE 10 - singlelock.pml:101 - [change_doors_pos?1] (0:0:0 - 1)
		reached[0][10] = 1;
		if (q_zero(now.change_doors_pos))
		{	if (boq != now.change_doors_pos) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_doors_pos) == 0) continue;

		XX=1;
		if (1 != qrecv(now.change_doors_pos, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_doors_pos-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_doors_pos, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_doors_pos);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_doors_pos))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 147: // STATE 11 - singlelock.pml:103 - [((doors_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!((now.doors_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 12 - singlelock.pml:103 - [doors_status.higher = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.doors_status.higher;
		now.doors_status.higher = 1;
#ifdef VAR_RANGES
		logval("doors_status.higher", now.doors_status.higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 13 - singlelock.pml:105 - [(((doors_status.lower==2)&&(slide_status.lower==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!(((now.doors_status.lower==2)&&(now.slide_status.lower==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 14 - singlelock.pml:106 - [lock_water_level = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = now.lock_water_level;
		now.lock_water_level = 1;
#ifdef VAR_RANGES
		logval("lock_water_level", now.lock_water_level);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 15 - singlelock.pml:107 - [(((doors_status.lower==1)||(slide_status.lower==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!(((now.doors_status.lower==1)||(now.slide_status.lower==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 19 - singlelock.pml:109 - [((doors_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((now.doors_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 153: // STATE 20 - singlelock.pml:109 - [doors_status.higher = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = now.doors_status.higher;
		now.doors_status.higher = 2;
#ifdef VAR_RANGES
		logval("doors_status.higher", now.doors_status.higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 154: // STATE 23 - singlelock.pml:111 - [doors_pos_changed!1] (0:0:0 - 5)
		IfNotBlocked
		reached[0][23] = 1;
		if (q_full(now.doors_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.doors_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.doors_pos_changed, 0, 1, 1);
		if (q_zero(now.doors_pos_changed)) { boq = now.doors_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 155: // STATE 24 - singlelock.pml:112 - [change_slide_pos?2] (0:0:0 - 1)
		reached[0][24] = 1;
		if (q_zero(now.change_slide_pos))
		{	if (boq != now.change_slide_pos) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_slide_pos) == 0) continue;

		XX=1;
		if (2 != qrecv(now.change_slide_pos, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_slide_pos-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_slide_pos, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_slide_pos);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_slide_pos))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 156: // STATE 25 - singlelock.pml:114 - [((slide_status.lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!((now.slide_status.lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 26 - singlelock.pml:114 - [slide_status.lower = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = now.slide_status.lower;
		now.slide_status.lower = 1;
#ifdef VAR_RANGES
		logval("slide_status.lower", now.slide_status.lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 27 - singlelock.pml:115 - [lock_water_level = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		(trpt+1)->bup.oval = now.lock_water_level;
		now.lock_water_level = 2;
#ifdef VAR_RANGES
		logval("lock_water_level", now.lock_water_level);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 159: // STATE 28 - singlelock.pml:116 - [((slide_status.lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!((now.slide_status.lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 29 - singlelock.pml:116 - [slide_status.lower = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		(trpt+1)->bup.oval = now.slide_status.lower;
		now.slide_status.lower = 2;
#ifdef VAR_RANGES
		logval("slide_status.lower", now.slide_status.lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 32 - singlelock.pml:118 - [slide_pos_changed!1] (0:0:0 - 3)
		IfNotBlocked
		reached[0][32] = 1;
		if (q_full(now.slide_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.slide_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.slide_pos_changed, 0, 1, 1);
		if (q_zero(now.slide_pos_changed)) { boq = now.slide_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 162: // STATE 33 - singlelock.pml:119 - [change_slide_pos?1] (0:0:0 - 1)
		reached[0][33] = 1;
		if (q_zero(now.change_slide_pos))
		{	if (boq != now.change_slide_pos) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_slide_pos) == 0) continue;

		XX=1;
		if (1 != qrecv(now.change_slide_pos, 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_slide_pos-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_slide_pos, XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_slide_pos);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_slide_pos))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 163: // STATE 34 - singlelock.pml:121 - [((slide_status.higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		if (!((now.slide_status.higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 35 - singlelock.pml:121 - [slide_status.higher = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		(trpt+1)->bup.oval = now.slide_status.higher;
		now.slide_status.higher = 1;
#ifdef VAR_RANGES
		logval("slide_status.higher", now.slide_status.higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 36 - singlelock.pml:123 - [(((doors_status.lower==2)&&(slide_status.lower==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!(((now.doors_status.lower==2)&&(now.slide_status.lower==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 166: // STATE 37 - singlelock.pml:124 - [lock_water_level = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = now.lock_water_level;
		now.lock_water_level = 1;
#ifdef VAR_RANGES
		logval("lock_water_level", now.lock_water_level);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 38 - singlelock.pml:125 - [(((doors_status.lower==1)||(slide_status.lower==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		if (!(((now.doors_status.lower==1)||(now.slide_status.lower==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 42 - singlelock.pml:127 - [((slide_status.higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		if (!((now.slide_status.higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 169: // STATE 43 - singlelock.pml:127 - [slide_status.higher = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		(trpt+1)->bup.oval = now.slide_status.higher;
		now.slide_status.higher = 2;
#ifdef VAR_RANGES
		logval("slide_status.higher", now.slide_status.higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 170: // STATE 46 - singlelock.pml:129 - [slide_pos_changed!1] (0:0:0 - 5)
		IfNotBlocked
		reached[0][46] = 1;
		if (q_full(now.slide_pos_changed))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.slide_pos_changed);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.slide_pos_changed, 0, 1, 1);
		if (q_zero(now.slide_pos_changed)) { boq = now.slide_pos_changed; };
		_m = 2; goto P999; /* 0 */
	case 171: // STATE 50 - singlelock.pml:131 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

