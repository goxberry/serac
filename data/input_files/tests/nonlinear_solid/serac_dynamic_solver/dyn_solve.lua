-- Comparison information
expected_l2norm = 0.08363646
epsilon = 0.0001

-- Simulation time parameters
dt      = 1.0

main_mesh = {
    -- mesh file
    mesh = "../../../../meshes/beam-hex.mesh",
    -- serial and parallel refinement levels
    ser_ref_levels = 1,
    par_ref_levels = 0,
}

-- Solver parameters
nonlinear_solid = {
    solver = {
        linear = {
            rel_tol     = 1.0e-4,
            abs_tol     = 1.0e-8,
            max_iter    = 500,
            print_level = 0,
            solver_type = "gmres",
            prec_type   = "AMG",
        },

        nonlinear = {
            rel_tol     = 1.0e-4,
            abs_tol     = 1.0e-8,
            max_iter    = 500,
            print_level = 1,
        },

        dynamic = {
            linear = {
                rel_tol     = 1.0e-4,
                abs_tol     = 1.0e-8,
                max_iter    = 500,
                print_level = 0,
                solver_type = "gmres",
                prec_type   = "JacobiSmoother",
            },
            timestepper = "SDIRK33",
        },
    },

    -- polynomial interpolation order
    order = 1,

    -- neo-Hookean material parameters
    mu = 0.25,
    K  = 5.0,

    -- boundary condition parameters
    boundary_conds = {
        {
            name = "displacement",
            -- boundary attribute 1 (index 0) is fixed (Dirichlet) in the x direction
            attrs = {1},
        },
    },
}
